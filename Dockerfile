FROM node:10.14.2
ADD ./ /app
WORKDIR /app
RUN npm start &
EXPOSE 3000