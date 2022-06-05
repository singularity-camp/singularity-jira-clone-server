import dotenv from "dotenv";
import express from "express";
import cors from "cors";

import router from "./router";

dotenv.config();

const app = express();

app.use(cors());
app.use(router);

app.listen(process.env.PORT, () =>
  console.log(`Server is running on PORT: ${process.env.PORT}`)
);
