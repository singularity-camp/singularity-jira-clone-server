import dotenv from "dotenv";
import express from "express";

import { log } from "./log";

dotenv.config();

log("Name!!!");

const app = express();
console.log(app);
console.log(process.env.PORT);
