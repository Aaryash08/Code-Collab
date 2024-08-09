# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package.lock files
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code
COPY . .

# Build the React application
# RUN npm run build

ENV PORT=8080

# Expose the port the app runs on
EXPOSE 8080

# Start the server
CMD ["yarn", "start"]
