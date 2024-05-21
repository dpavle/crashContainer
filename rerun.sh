docker stop crash && docker rm crash

docker build -t crashcontainer .

docker run -d --name crash -p 5000:5000 crashcontainer
