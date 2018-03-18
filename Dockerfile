# Dockerfile
FROM node:8.10.0
ADD ./ /node_app
WORKDIR /node_app
RUN npm install