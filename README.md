# Jira Clone Server

Sample Jira clone

---

## Requirements

For development, you will only need Node.js and a node global package, Yarn, installed in your environement.

## Env file

    $ touch .env

You can use the following content, DO NOT USE IN PROD

```
PORT=4000

HASURA_CONTAINER=hasura
HASURA_GRAPHQL_SERVER_PORT=8080
HASURA_GRAPHQL_ADMIN_SECRET=myadm!nSECRET4hasura
PG_DATABASE_URL=postgres://postgres:postgrespassword@postgres:5432/postgres

DATABASE_URL=postgresql://postgres:postgrespassword@localhost:5432/postgres
```

## Docker

Install [docker desktop](https://www.docker.com/products/docker-desktop/) for your own OS

    $ docker compose up --build 

## Server

You server will be running under PORT in `.env` file

## DB: Migrations & seed

You can reset. BEWARE it will remove your progress

```shell
$ npm run hasura:reset
```

## Hasura console

```shell
$ npm run hasura:console
```
