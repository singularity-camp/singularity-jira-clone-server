FROM node:18-alpine

WORKDIR /app

ENV APP_VERSION=dev
ENV NODE_ENV=development

COPY package*.json ./
RUN npm install && npm cache clean --force

CMD ["npm", "run", "dev"]