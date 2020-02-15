FROM node:10.14.2
COPY ./ /app
WORKDIR /app
RUN ls
RUN npm start
EXPOSE 3000