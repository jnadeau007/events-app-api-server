# Use Google base image for NodeJS
From launcher.gcr.io/google/nodejs
RUN node -v
RUN npm -v
# Copy application code.
COPY . /app/
#Change the working directory in image
WORKDIR /app
#Install dependencies
Run npm install
# Start the Express app
CMD ["node", "./src/Server.js"]