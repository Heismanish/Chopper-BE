FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./
COPY tsconfig.json ./

# Install both production and development dependencies
RUN npm install

COPY . .

RUN npm run build

CMD ["npm", "start"]

EXPOSE 3001