FROM node
ENV http_proxy http://proxycorp.coppel.com:8080
ENV https_proxy http://proxycorp.coppel.com:8080
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 2020
CMD ["node", "server.js"]
