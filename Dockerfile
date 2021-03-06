# syntax=docker/dockerfile:1
FROM alpine
RUN apk add --no-cache python3 py-pip git
WORKDIR /
RUN pip install flask
RUN git clone https://github.com/harekrishnarai/devops-cicd
WORKDIR /devops-cicd
CMD flask run --host=0.0.0.0 --port=80
EXPOSE 80
