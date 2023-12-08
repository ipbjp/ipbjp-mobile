import * as express from "express";

import eventRoutes from "./event.routes";

const router = express.Router();
router.use("/events", eventRoutes);

export default router;
