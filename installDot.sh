#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles
# in ~/dotfiles
############################
debug()
{
    if [ $isdebug -gt 0 ] && [[ "$1" ]]; then
        echo $1
    fi
}

cleanup()
{
    local num=$(ls -A $olddir|wc -l)
    # if no file in the $olddir folder
    if [ "$num" != "0" ]; then
        cd $HOME
        #
        echo "FILES in folder $olddir:"
        for i in $(find $olddir -follow); do
            if [ -d $i ]; then
                #echo "Dir: " $(ls -hl $i)
                echo "Dir: $i"
            else
                #echo "File: " $(ls -hl $i)
                echo "File: $i"
            fi
        done
        cd $HOME
        if [ -e $olddir.tar.gz ]; then
            rm $olddir.tar.gz
        fi
        local dir=$(date +"%Y%m%d")_old_dot
        tar zcf $dir.tar.gz $dir
        cd -
        return $?
    else
        return 1
    fi
}

# global variables
dir=$HOME/dotfiles                    # dotfiles directory
olddir=
isdebug=1
blacklist="_local tmux-powerlinerc installDot.sh" # constant

# main function
# create dotfiles_old in homedir
# echo "Creating $olddir for backup of any existing dotfiles in ~"
olddir=$HOME/$(date +"%Y%m%d")_old_dot
mkdir -p $olddir
# echo "...done"

# change to the dotfiles directory
# echo "Changing to the $dir directory"
cd $dir
# echo "...done"
# move any existing dotfiles in homedir to dotfiles_old directory, then create
# symlinks
for i in $(ls $dir); do
    ifskip=0
    # check if the file in backlist
    for j in $blacklist; do
        if [ "$j" == "$i" ]; then
            #echo "an obj in blacklist, skip ..."
            ifskip=1
            break
        fi
    done
    if [ $ifskip -ne 0 ]; then
        echo "============================="
        echo "file $i"
        echo "an obj in blacklist, skip ..."
        echo "============================="
        continue
    fi
    # check if it's a directory
    if [ -d $i ]; then
        files=$( find $i -follow)
        for k in $files; do
            raw_dot_file=$(echo $k | tr _ .)
            if [ ! -d $HOME/$raw_dot_file ]; then
                diff $k $HOME/$raw_dot_file > /dev/null
                if [ $? -ne "0" ]; then
                    #echo "COPYING RAW: $HOME/$raw_dot_file to $k ..."
                    cp $HOME/$raw_dot_file $k
                fi
            fi
        done
        cp -r $i $olddir
    else
        # check if the dotfile exsits and it's not a link
        # NOTE. it only execute once when all dotfiles are not soft-lk files
        if [ -e $HOME/.$i ] && [ ! -L $HOME/.$i ]; then
            diff $HOME/.$i $dir/$i > /dev/null
            if [ $? -ne 0 ]; then
                # copying home dots to repo
                echo "COPYING RAW DOT: $HOME/.$i $dir/$i"
                cp $HOME/.$i $dir/
            fi
            mv $HOME/.$i $HOME/.$i.bak
        fi
        echo "COPYING: $dir/$i to $olddir"
        cp $dir/$i $olddir
        echo "CREATING Softlink: $HOME/.$i -> $dir/$i"
        rm $HOME/.$i
        ln -s $dir/$i $HOME/.$i
    fi
done

cleanup || exit 1

