pipeline {
  agent any
  stages {
    stage('Stage') {
      steps {
        sh '''#!/bin/bash
############################
# ./makesymlinks.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# Modified from this dude: https://github.com/michaeljsmalley/dotfiles
# to use it: update $files variable with the dotfiles you want to sync.
# If you are just forking mine, don\'t do anything outside of running ./makesymlinks.sh
############################

########## Variables

dir=~/repos/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bash_profile profile bashrc vimrc vim"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
if [ -d $olddir ];
then
    echo ""
    echo -n "Directory already exists, moving on"
    echo ""
else
    echo -n "Creating $olddir for backup of any existing dotfiles in ~ "
    mkdir -p $olddir
    echo ""
    echo -n "done"
    echo ""
fi

# change to the dotfiles directory
echo -n "Changing to the $dir directory"
echo ""
cd $dir
echo "done"

# move any existing dotfiles in home to dotfiles_old directory
# then create symlinks from home to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.${file} ${olddir}
    echo "Creating symlink to $file in home directory."
    ln -s $dir/.${file} ~/.${file}
done'''
      }
    }
  }
}