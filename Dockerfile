FROM node:alpine

#Install git
RUN apk add --update git
           
#Set working directory
WORKDIR '/app'

#Clone directory
RUN git clone https://github.com/graemebrooks/WA2-Frontend.git

RUN git checkout main
RUN git pull origin main
RUN cd WA2-Frontend
COPY package.json .
ENV PATH="./node_modules/.bin:$PATH"
RUN npm install
COPY . .
RUN npm run build
CMD ["npm","start"]