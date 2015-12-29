docker build -t node:v42 .
docker run -i -t -p 8080:80 --name node node:v42
