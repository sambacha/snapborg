FROM node:14-alpine3.14 AS stage1

# Copy and build the project
WORKDIR /app
COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json

RUN npm install

COPY . /app/

# Install packages
RUN npx tsc -b

FROM node:14-alpine3.14

COPY --from=stage1 /app /app
WORKDIR /app

RUN npm i -g @graphprotocol/ipfs-sync

CMD ["make", "scrape"]
