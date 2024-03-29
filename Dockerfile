FROM node:alpine

WORKDIR /app

COPY package.json ./

# install dependencies
RUN npm install

# copy rest of app
COPY . .


# EXPOSE PORT 
EXPOSE 3000

CMD [ "npm", "start" ]