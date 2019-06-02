#specify a base image
FROM node:alpine

WORKDIR /usr/app

#install the dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./

#Default command
CMD ["npm", "start"]