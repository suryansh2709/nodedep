FROM node:latest
RUN mkdir -p /usr/public
WORKDIR /usr/public
COPY package.json /usr/public
RUN npm install
RUN npm start
COPY . /usr/public
EXPOSE 3000
CMD ["npm", "start"]
