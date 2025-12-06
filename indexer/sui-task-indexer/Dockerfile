FROM node:20.19

WORKDIR /app

# Copy both package.json AND package-lock.json
COPY package.json package-lock.json ./

# Install only production dependencies
RUN npm ci --omit=dev

# Copy all project files
COPY . .

# Generate Prisma client
RUN npx prisma generate
RUN npx ts-node indexer.ts

# Start indexer
CMD ["npm", "run indexer"]
