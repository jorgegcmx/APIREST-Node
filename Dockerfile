# Fetching the latest node image on alpine linux
FROM node:latest  AS development


# Setting up the work directory
WORKDIR /node-server

# Installing dependencies
COPY ./package*.json /node-server

RUN npm install

# Copying all the files in our project
COPY . .

EXPOSE 3322

# Starting our application
CMD ["npm","run dev]
