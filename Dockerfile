FROM node:latest
MAINTAINER R0GGER

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/daneedk/homey.ink
RUN npm install -g serve
WORKDIR /homey.ink

EXPOSE 5000

CMD ["serve", "app"]
