#!/bin/bash

read -p "Kérem, írja be a nevét: " name
read -p "Kérem, írja be a telefonszámát: " phone_num

echo "{" > JH3V7T.json
echo -n ' "name" : "' >> JH3V7T.json
echo -n "$name" >> JH3V7T.json
echo '",' >> JH3V7T.json
echo -n ' "phone" : "' >> JH3V7T.json
echo -n "$phone_num" >> JH3V7T.json
echo '"' >> JH3V7T.json
echo '}' >> JH3V7T.json
