# Use the official Node.js 20 image
FROM node:20

# Set working directory to the root of the project
WORKDIR /shkeeper-docs

# Copy package.json and package-lock.json first
# This allows Docker to cache npm install layer
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the project files into the container
COPY . .

# Remove any previous Docusaurus build folders
RUN npm run build

# Expose port 3000 (default for Docusaurus dev server)
EXPOSE 3000

# Run Docusaurus in development mode, listening on all network interfaces
CMD ["npm", "run", "serve", "--", "--host", "0.0.0.0"]
