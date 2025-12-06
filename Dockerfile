FROM node:22.12-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
RUN npx prisma generate
CMD ["node", "index.mjs"]
