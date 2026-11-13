# Use a lightweight Node.js image
FROM node:20-alpine

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on (adjust if your app uses a different port)
EXPOSE 8080

# Start the application
CMD ["npm", "start"]
