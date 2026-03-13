FROM docker.io/guergeiro/pnpm:22-10-alpine

COPY hermeto-output /tmp/hermeto-output

WORKDIR /app

COPY . .

RUN pnpm install

EXPOSE 3000

CMD ["pnpm", "run", "start"]
