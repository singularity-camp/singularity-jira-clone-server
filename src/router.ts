import http from "http";
import express from "express";
import { createProxyMiddleware } from "http-proxy-middleware";

function onProxyReq(proxyReq: http.ClientRequest) {
  proxyReq.setHeader(
    "x-hasura-admin-secret",
    process.env.HASURA_GRAPHQL_ADMIN_SECRET || ""
  );
}

const router = express.Router();

router.all(
  "/graphql",
  createProxyMiddleware({
    target: `${process.env.HASURA_GRAPHQL_ENDPOINT}/v1`,
    changeOrigin: true,
    onProxyReq,
  })
);

export default router;
