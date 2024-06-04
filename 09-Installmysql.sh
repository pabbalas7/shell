#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then 
 echo "Error: Please run with root user"
 exit 1
else
 echo "your a root user"
yum install mysql -y
if [ $? -ne o ]
then
 echo "Error:Installing mysql is failed"
else
 echo "installing mysql is success"
fi
yum insatll GIT -y
if [ $? -ne o ]
then
 echo "Error:Installing GIT is failed"
else
 echo "installing GIT is success"
fi