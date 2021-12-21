#!#!/bin/bash
# Description: Script To Uninstall Package As A Root User
# Author: Bannky Email: badeite@yahoo.com
# Date Dec 2O, 2021

USER=root
#ENV1
echo "Hello, please enter the package name you want to uninstall:"
read PKG

echo "Enter apt for ubuntu or yum for centos to run a package"
read Run

if [ ${USER} != root ]
then
        echo "Permission denied, you need to be a ${USER} user"
else
        echo "Please wait while checking the ${PKG} package to uninstall..."
sleep 3
        ${Run} remove ${PKG} -y
echo
sleep 3
        echo "The package name is ${PKG} "
echo
fi
echo
sleep 3
date
echo