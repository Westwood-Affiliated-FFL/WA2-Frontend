FROM node:alpine

#Install git
RUN apt-get update \        
     apt-get install -y git
RUN mkdir /apps/react \      
           cd /apps/react \        
           git clone https://github.com/jagadish12/SampleTest.git
           
#Set working directory
WORKDIR '/apps/react'

COPY package.json .
ENV PATH="./node_modules/.bin:$PATH"
RUN npm install
COPY . .
RUN npm run build
CMD ["npm","start"]