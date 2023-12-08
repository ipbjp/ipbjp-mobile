import "reflect-metadata";
import express from "express";
import * as bodyParser from "body-parser";
import cors from "cors";
import mongoose from "mongoose";
import * as dotenv from "dotenv";
import "express-async-errors";
import router from "./routes";
dotenv.config();

const app = express();
app.use(cors({ exposedHeaders: ["Content-Disposition"] }));
app.use(bodyParser.urlencoded({ extended: true, limit: "50mb" }));
app.use(bodyParser.json({ limit: "50mb" }));

const port = process.env.PORT || 3000;
const DB_URL = process.env.MONGO_DB_CONNECTION || "mongodb://127.0.0.1:27017";

mongoose
  .connect(DB_URL, { dbName: "ipb-jp" })
  .then(() => console.log("Connected to MongoDB"))
  .catch((err) => console.error("Could not connect to MongoDB", err));

app.use(express.json());

app.use(router);

app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send("Something broke!");
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});

export default app;
