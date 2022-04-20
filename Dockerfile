# Create image based on the official Node 10 image from dockerhub
FROM node

# Create a directory where our app will be placed
RUN mkdir -p /app

# Change directory so that our commands run inside this new directory
WORKDIR /app

# Copy dependency definitions
COPY package.json .

# Install dependecies
RUN npm install

# Get all the code needed to run the app
COPY . .

#RUN ENV NODE_ENV=test

# Expose the port the app runs in
EXPOSE 4200 49153 51005

# Serve the app
CMD ["npm", "start"]