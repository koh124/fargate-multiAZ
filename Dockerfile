FROM node:18

COPY . /app

WORKDIR /app

RUN npm init -y

RUN npm install -g http-server

EXPOSE 8080

CMD http-server dist
