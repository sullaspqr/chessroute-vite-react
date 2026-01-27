FROM oven/bun:1.1
WORKDIR /app

COPY bun.lock package.json ./
RUN bun install

COPY . .
RUN bun run build

EXPOSE 3000
CMD ["bun", "x", "serve", "-s", "dist", "-l", "3000"]


