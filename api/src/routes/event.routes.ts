import { Router } from "express";
import { Container } from "typedi";
import { EventController } from "../controllers/event.controller";

const router = Router();
const controller = Container.get(EventController);

router.post("/", controller.createEvent.bind(controller));
router.get("/", controller.getAllEvents.bind(controller));
router
  .get("/:id", controller.getEventById.bind(controller))
  .put("/:id", controller.updateEvent.bind(controller))
  .delete("/:id", controller.deleteEvent.bind(controller));

export default router;
