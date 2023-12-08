# Stage 1: Build the application
FROM node:18 AS builder

WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies including 'devDependencies'
RUN npm install

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Compile TypeScript to JavaScript
RUN npm run build



# Stage 2: Run the application
FROM node:18-alpine

WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install only production dependencies
RUN npm install

# Copy the built application from the builder stage
COPY --from=builder /usr/src/app/dist ./dist

# Expose the port the app runs on
EXPOSE 8080

# Define the command to run your app using CMD which defines your runtime
CMD ["node", "dist/app.js"]

