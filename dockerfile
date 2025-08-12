# Dockerfile
FROM node:18-alpine
WORKDIR /app

# install deps
COPY package*.json ./
RUN npm install --production

# copy app
COPY . .

EXPOSE 3000
CMD ["node", "index.js"]
