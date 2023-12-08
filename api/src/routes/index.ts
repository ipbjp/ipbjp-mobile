import * as express from "express";

import eventRoutes from "./event.routes";

const router = express.Router();
router.use("/events", eventRoutes);
router.use("/", (req, res) =>
  res.status(200).json({ message: "Welcome to IPB JP" })
);

router.use("*", (req, res) => res.status(404).json({ error: "Not Found" }));

export default router;
