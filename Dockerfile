# syntax=docker/dockerfile:1
FROM alpine
RUN apk add --no-cache python3 py-pip git
WORKDIR /
RUN pip install flask
CMD ["git", "clone", "https://github.com/harekrishnarai/devops-cicd"]
CMD ["cd", "devops-cicd"]
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]
EXPOSE 80
