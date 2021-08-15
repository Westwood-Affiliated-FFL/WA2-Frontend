FROM node:alpine

#Install git
RUN apk add --update git
           
#Set working directory
WORKDIR '/apps'

#Clone directory
RUN git clone https://github.com/graemebrooks/WA2-Frontend.git

COPY package.json .
ENV PATH="./node_modules/.bin:$PATH"
RUN npm install
COPY . .
RUN npm run build
CMD ["npm","start"]