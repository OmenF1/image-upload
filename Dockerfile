# Use the official Node.js LTS image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application code
COPY . .

# Create the uploads folder for file storage
RUN mkdir uploads

# Expose the server port
EXPOSE 3000

# Run the application
CMD ["node", "server.js"]
