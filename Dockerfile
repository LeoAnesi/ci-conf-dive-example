FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN apk --no-cache add --virtual builds-deps build-base && npm install --prod && npm cache clean --force && apk del builds-deps && apk cache clean

COPY . .

EXPOSE 8080

CMD node server.js