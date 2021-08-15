FROM node:alpine

#Install git
RUN apk add --update git
RUN mkdir /apps/react \      
           cd /apps/react \        
           git clone https://github.com/graemebrooks/WA2-Frontend.git
           
#Set working directory
WORKDIR '/apps/react'

COPY package.json .
ENV PATH="./node_modules/.bin:$PATH"
RUN npm install
COPY . .
RUN npm run build
CMD ["npm","start"]