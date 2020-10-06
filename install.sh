#!/bin/sh
sudo apt-get update
sudo apt-get install python3.6
sudo apt install python3-pip
echo "alias python=python3" >> ~/.bash_aliases
source ~/.bash_aliases
source ~/.bashrc
echo "alias pip=pip3" >> ~/.bash_aliases
source ~/.bash_aliases