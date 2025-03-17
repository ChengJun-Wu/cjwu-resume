docker stop resume
docker rm resume
docker build -t resume .
docker run -p 80:80 cjwu --name resume
