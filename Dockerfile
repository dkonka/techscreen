FROM node:16.9.0
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install prom-client express-prom-bundle
RUN npm install
COPY . .
CMD ["npm", "start"]
EXPOSE 8080
