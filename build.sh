#!/bin/bash

git clone git@bitbucket.org:datatoknowledge/webpagetraverserwrapper.git

git clone git@bitbucket.org:fabiofumarola/listflattener.git

docker build -t kdde/listflattener .

rm -rf webpagetraverserwrapper
rm -rf listflattener

echo "---------------------------------------"
echo "please run the docker with the command below"
# echo "docker run -dt --name listflattener -p 9000:4568 kdde/listflattener"
echo "docker-compose up -d"
