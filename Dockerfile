FROM node:10.14.2
ADD ./ /app
WORKDIR /app
EXPOSE 3000
ENTRYPOINT [ "npm", "start" ]