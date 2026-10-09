## Using Node 16 as the base image as told by question
FROM node:16

## Setting the working directory
WORKDIR /app


## Copying pacakage.json and package-lock.json to the working directory
COPY package*.json ./

## Installing dependencies
RUN npm install 

## COPY remaning files 
COPY . .

## Document that the application uses port 3000
EXPOSE 3000


## Starting the application
CMD ["npm", "start"]

