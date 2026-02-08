FROM node:20-alpine3.20

WORKDIR /app

COPY package.json* ./
RUN npm install axios ws
COPY index.js .

EXPOSE 3000

CMD ["node", "index.js"]
