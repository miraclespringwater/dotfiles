import express, { Express, Router } from "express";
import errorController from "./controllers/errorController.js";
import AppError from "./utils/AppError.js";

const app: Express = express();

app.use(express.json());

app.get("/", (req, res) => {
  res.send("Express server!!!");
});

app.all("*", (req, res, next) => {
  next(new AppError("Route not found.", 404));
});

app.use(errorController);

export default app;
