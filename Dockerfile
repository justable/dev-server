FROM node:14

WORKDIR /usr/src/reactcases/node

COPY package.json .

RUN npm install --production

COPY . .

RUN npm run build

EXPOSE 7002

CMD [ "npm", "start" ]