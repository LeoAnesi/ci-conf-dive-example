FROM node:20-alpine

WORKDIR /app

RUN apk add build-base

COPY . .

RUN npm install

EXPOSE 8080
CMD node server.js