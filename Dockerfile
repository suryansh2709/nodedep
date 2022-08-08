FROM node:latest

MAINTAINER yo           

RUN echo "Tryin to build my first application"

COPY . /var/www

WORKDIR /var/www

RUN npm install

EXPOSE 5000

ENTRYPOINT ["npm","start"]
