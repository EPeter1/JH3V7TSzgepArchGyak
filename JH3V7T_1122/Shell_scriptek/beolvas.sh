#!/bin/bash

read -p "Adja meg az egyik kedvenc számát: " a
read -p "Most pedig írja be egy másik kedvenc számát: " b

echo "$((a + b))"
echo "$((a - b))"
echo "$((a * b))"
echo "$((a / b))"
echo "$((a % b))"

