#!/bin/bash

szoveg=$(cat people.csv)
printf "${szoveg//"gmail.com"/"citromail.hu"}" > JH3V7T_people.csv
