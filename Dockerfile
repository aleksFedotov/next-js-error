# Use an official Node.js runtime as a parent image
FROM node:17-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install 

# Copy the rest of the app's code to the working directory
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Start the app
CMD ["npm","run", "dev"]