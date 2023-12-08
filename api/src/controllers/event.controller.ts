import { Service } from "typedi";
import { Request, Response } from "express";
import { EventService } from "../services/events.service";

@Service()
export class EventController {
  constructor(private eventService: EventService) {}

  async createEvent(req: Request, res: Response) {
    const event = await this.eventService.createEvent(req.body);
    res.status(201).send(event);
  }

  async getAllEvents(req: Request, res: Response) {
    const events = await this.eventService.getAllEvents();
    res.send(events);
  }

  async getEventById(req: Request, res: Response) {
    const event = await this.eventService.getEventById(req.params.id);
    if (!event) return res.status(404).send();
    res.send(event);
  }

  async updateEvent(req: Request, res: Response) {
    const event = await this.eventService.updateEvent(req.params.id, req.body);
    if (!event) return res.status(404).send();
    res.send(event);
  }

  async deleteEvent(req: Request, res: Response) {
    const event = await this.eventService.deleteEvent(req.params.id);
    if (!event) return res.status(404).send();
    res.send(event);
  }
}
