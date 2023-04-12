FROM node:18-alpine3.16 AS builder

WORKDIR /app

COPY package.json ./package.json
COPY package-lock.json ./package-lock.json
RUN npm install

COPY . .

RUN npm run build

FROM nginx:1-alpine

WORKDIR /usr/share/nginx/html

COPY --from=builder /app/build . 

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]