FROM node:alpine
LABEL app=my-node-app
EXPOSE 3000
# WORKDIR /app
# COPY . .
# RUN npm install

WORKDIR  /app
COPY package*.json ./
RUN npm ci
COPY . .
CMD ["node", "./bin/www"]