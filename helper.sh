#!/bin/bash

homework=$1
students="students"
org="" # org name here

mkdir $homework
cd $homework
while read student; do
    student=(${student})
    git clone "https://github.com/$org/${student[1]}-$homework.git" > /dev/null 2>&1
    mv ${student[1]}-$homework ${student[0]}
    echo ${student[0]}
done < ../$students;
