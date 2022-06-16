#!/bin/bash
while true; do
    read -p "Do you wish to remove all server data (you will not be able to recover it any more! [y/n]" yn
    case $yn in
        [Yy]* ) echo 'removing server /var/ *'; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
