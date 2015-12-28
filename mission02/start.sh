cp ~/.ssh/id_rsa.pub .
docker build -t ssh:v42 .
docker run -d -t -p 42:42 --name sshContainer ssh:v42