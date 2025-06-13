# Etap build – kompilacja TypeScript
FROM node:20-alpine AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Etap runtime – uruchomienie aplikacji
FROM node:18-alpine

WORKDIR /app

COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY package.json ./

CMD ["node", "dist/main.js"]

EXPOSE 3000
