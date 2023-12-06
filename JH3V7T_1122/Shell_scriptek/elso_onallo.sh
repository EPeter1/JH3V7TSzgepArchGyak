#!/bin/bash

read -p "Kérem, írja be a nevét: " username
read -p "Kérem, írja be a verziószámot: " version
read -p "Kérem, írja be a weboldal címét: " site

echo -n '"username": "' >> config.yml
echo -n "$username" >> config.yml
echo '",' >> config.yml
echo -n '"version": "' >> config.yml
echo -n "$version" >> config.yml
echo '",' >> config.yml
echo -n '"site": "' >> config.yml
echo -n "$site" >> config.yml
echo '"' >> config.yml
