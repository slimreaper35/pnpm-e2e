FROM guergeiro/pnpm:22-10-alpine

COPY hermeto-output /tmp/hermeto-output

WORKDIR /app

COPY package.json pnpm-lock.yaml .

RUN pnpm install --ignore-scripts --frozen-lockfile --offline

COPY index.js .

EXPOSE 3000

CMD ["pnpm", "run", "start"]
