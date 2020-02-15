FROM node:10.14.2
COPY ./ /app
WORKDIR /app
EXPOSE 3000
CMD /bin/bash