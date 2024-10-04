# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/go/dockerfile-reference/

# Want to help us make this template better? Share your feedback here: https://forms.gle/ybq9Krt8jtBL3iCk7

FROM node:20-alpine

WORKDIR /app

# Copy the rest of the source files into the image
COPY . .

# Expose the port that the application listens on
EXPOSE 3000


RUN yarn install --production

# Run the application
CMD ["node", "./src/index.js"]

