FROM node:18-alpine

WORKDIR /app

ENV APP_VERSION=dev
ENV NODE_ENV=development

ADD ./package.json ./yarn.lock ./
RUN npm install

CMD ["npm", "run", "dev"]