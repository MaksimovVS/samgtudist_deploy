FROM node:19-alpine as build

WORKDIR /app/

COPY ./frontend/package.json ./
COPY ./frontend/package-lock.json ./
RUN npm ci --silent

COPY ./frontend/ ./
RUN npm run build

FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]