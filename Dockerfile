FROM node:latest

# Create app directory
RUN mkdir -p /usr/app
WORKDIR /usr/app

# Install app dependencies
COPY package.json .
RUN npm install
RUN echo "abc"
# Bundle app source
COPY src ./src

# Expost port and start app
EXPOSE 3000
CMD [ "npm", "start" ]
