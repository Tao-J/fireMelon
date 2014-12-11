#!/bin/sh

red="\x1B[01;91m"
green="\x1B[01;92m"
blue="\x1B[01;96m"
yellow="\x1B[01;93m"
reset="\x1B[0m"

alias echo="echo -e"

echo "${yellow}Comment tu t'appelles?${reset}"
read in
git config --global user.name "$in"
echo "${green}Et votre email?${reset}"
read in
git config --global user.email "$in"


echo "${blue}commit editor: qui?${reset}"
read in
git config --global core.editor "$in"

echo "${red}autocrlf input, oh Lala..${reset}"
git config --global core.autocrlf input

# echo "always excludes *~ .DS_Store"
# git config --global core.excludefile .DS_Store
# git config --global core.excludefile *~

echo "-----~~~~~-----"
git var -l

# TODO: sign with gpg
# ref: http://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work#_signing
