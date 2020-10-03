FROM node:13.12.0-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

WORKDIR /app/src/

EXPOSE 3000

CMD ["npm", "start"]
