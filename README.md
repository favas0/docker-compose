# docker-compose
docker and docker-compose in ubuntu


# HOW TO BUILD

docker build . --tag docker-compose:latest

# HOW TO RUN 

docker run -v /var/run/docker.sock:/var/run/docker.sock -ti docker-compose 
