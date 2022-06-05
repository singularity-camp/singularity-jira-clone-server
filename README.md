# Jira Clone Server

Sample Jira clone

---

## Requirements

For development, you will only need Node.js and a node global package, Yarn, installed in your environement.

### Yarn installation

After installing node, this project will need yarn too, so just run the following command.

    $ npm install -g yarn

## Install

    $ yarn

## Env file

    $ touch .env

You can use the following content, DO NOT USE IN PROD

```
PORT=4000

HASURA_CONTAINER=hasura
HASURA_GRAPHQL_SERVER_PORT=8080
HASURA_GRAPHQL_ADMIN_SECRET=myadm!nSECRET4hasura
```

## Docker

Install [docker desktop](https://www.docker.com/products/docker-desktop/) for your own OS

    $ docker compose up

## Server

You server will be running under PORT in `.env` file