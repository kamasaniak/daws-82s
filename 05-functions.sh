#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 ... FAILURE"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi

dnf list install mysql -y

if [ $? -ne 0 ]
then 
   echo "installing mysql ... FAILURE"
    exit 1
else
   echo "installing mysql ... SUCCESS"
fi


dnf list install git -Y

if [ $? -ne 0 ]
then 
   echo "installing Git ... FAILURE"
    exit 1
else
   echo "installing Git ... SUCCESS"
fi




