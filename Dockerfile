FROM node:10.14.2
COPY ./ /app
WORKDIR /app
RUN npm install --registry=https://registry.npm.taobao.org
RUN npm start
EXPOSE 3000