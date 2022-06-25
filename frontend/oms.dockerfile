FROM node:17-alpine

WORKDIR /app
COPY /frontend/package.json .
RUN npm install
COPY /frontend .

EXPOSE 3000
COPY . ./

RUN npm run build