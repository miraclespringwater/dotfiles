import { ErrorRequestHandler } from "express";

export default ((err, req, res) => {
  err.statusCode = err.statusCode || 500;
  err.status = err.status || "error";
  err.message = err.message || "Something went wrong!";

  return res.status(err.statusCode).json({
    status: err.status,
    message: err.message,
  });
}) as ErrorRequestHandler satisfies ErrorRequestHandler;
