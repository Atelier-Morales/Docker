docker build -t logs:v42 .
docker run -i -t -p 8080:80 --name logs -v /Users/Shared/logs:/var/log/nginx logs:v42
