# Devops-CICD
Develop a simple CI/CD pipeline which builds a docker container and runs it on AWS ECS which is configured for autoscaling and load-balancing.

- Clone this repo
- command to build docker container
```
docker build -t flaskapp2 . 
```
- command to run the container
```
docker run -p80:80 -it flaskapp2
```
