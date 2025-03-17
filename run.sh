docker stop resume
docker rm resume
docker build -t resume .
docker run -itd -p 80:80 --name resume resume
