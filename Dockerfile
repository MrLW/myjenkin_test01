FROM node:10.14.2
COPY ./ /app
WORKDIR /app
RUN ls
EXPOSE 3000