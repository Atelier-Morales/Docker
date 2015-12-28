cp ~/.ssh/id_rsa.pub .
docker build -t volume:v42 .
docker run -d -t -p 43:43 --name volumeContainer -v /Users/Shared/docker:/home/fmorales/docker_folder volume:v42