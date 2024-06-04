#!/bin/bash
ID=$(id -u)
VALIDATE(){
    if [ $1 -ne o ]
    then
     echo "Error:$2 ... failed"
    else
     echo "$2.... sucess"
    fi

}

if [ $ID -ne 0 ]
then 
 echo "Error: Please run with root user"
 exit 1
else
 echo "your a root user"

yum install mysql -y

VALIDATE $? "installing my sql"

yum install git -y

VALIDATE $? " installing git "