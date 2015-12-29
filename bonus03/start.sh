docker build -t apache:v42 .
docker run -i -t -p 8080:80 --name apache apache:v42
