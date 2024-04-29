# Use the official Node.js 14 image as base
FROM node:18

# Set the working directory in the container
WORKDIR /src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files from the current directory to the working directory in the container
COPY . /src/app

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["node", "/src/app/app.js"]
