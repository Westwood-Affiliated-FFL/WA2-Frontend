FROM node:alpine

#Install git
RUN apk add --update git
           
#Set working directory
WORKDIR '/usr/src/app'

COPY package*.json ./
ENV PATH="./node_modules/.bin:$PATH"
RUN npm install
COPY . .
RUN npm run build