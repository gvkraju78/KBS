#!/usr/bin/bash
for i in {1..4}
do
>Dockerfile
if (( i == 3))
then
echo "FROM httpd" >>Dockerfile
echo "RUN echo \"Hi I am error\" > /usr/local/apache2/htdocs/index.html" >> Dockerfile
docker build -t "shan5a6/deployment:v3" .
docker push shan5a6/deployment:v3
fi
echo "FROM httpd" >>Dockerfile
echo "RUN echo \"Hi I am v$i\" > /usr/local/apache2/htdocs/index.html" >> Dockerfile
docker build -t "shan5a6/deployment:v$i" .
docker push shan5a6/deployment:v$i
done
