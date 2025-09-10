FROM 600862335804.dkr.ecr.eu-central-1.amazonaws.com/docker-hub/node:24-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY src src

EXPOSE 3000

CMD ["node", "src/main.js"]