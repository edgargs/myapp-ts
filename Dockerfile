FROM node:11 

ENV PORT 3001

EXPOSE 3001

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

CMD ["node", "dist/"]
