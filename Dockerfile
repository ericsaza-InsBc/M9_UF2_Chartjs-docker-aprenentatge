FROM node:18-alpine3.18

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 1234
# required for docker desktop port mapping

CMD ["node", "app.js"]
