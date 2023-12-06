#!/bin/bash

szoveg=$(cat $1)
printf "${szoveg//"happy"/"nem gondoltam a vizsgaidőszakra"}" > out.txt