# Dockerfile
FROM node:18-alpine AS builder

WORKDIR /app

COPY package.json .babelrc ./
COPY src/ ./src/
COPY public/index.html ./public/

RUN npm install
RUN npm run build

FROM node:18-alpine AS runtime

WORKDIR /app

RUN npm install -g serve

COPY --from=builder /app/public ./public

EXPOSE 3000
CMD ["serve", "-s", "public", "-l", "3000"]
