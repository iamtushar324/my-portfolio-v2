FROM node:14-alpine AS build

WORKDIR /app

COPY package.json ./

RUN npm i

COPY . .

RUN npm run build

RUN chmod -R 755 /app/public

FROM nginx:alpine

COPY --from=build /app/public /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
