docker build -t hello/world:v42 .
docker run -i -t -p 8080:80 --name fmorales hello/world:v42
