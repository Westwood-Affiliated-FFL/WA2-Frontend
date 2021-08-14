FROM node:alpine
WORKDIR '/app'

COPY package.json .
ENV PATH="./node_modules/.bin:$PATH"
RUN npm install
COPY . .
RUN npm run build
CMD ["npm","start"]