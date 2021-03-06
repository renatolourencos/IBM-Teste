FROM node:boron

# Create app Directory
RUN mkdir -p usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD ["npm", "start"]
