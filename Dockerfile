#use official Node.js image
FROM node:18

#create app directory
WORKDIR /app

#copy package files first for caching
COPY . .

#install dependencies
RUN npm install

#Expose port
EXPOSE 5050

#run the application
CMD ["node", "server.js"]