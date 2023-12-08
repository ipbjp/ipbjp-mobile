import { Service } from "typedi";
import Event from "../models/event.model";

@Service()
export class EventService {
  async createEvent(eventData) {
    const event = new Event(eventData);
    return await event.save();
  }

  async getAllEvents() {
    // return await Event.find({});
    return [
      {
        _id: "5f4e6e8f1c9d4400001c3d02",
        name: "Tehnologii Web",
        description: "Tehnologii Web",
        location: "Bucuresti",
        date: "2020-09-01T00:00:00.000Z",
      },
    ];
  }

  async getEventById(id) {
    return await Event.findById(id);
  }

  async updateEvent(id, updateData) {
    return await Event.findByIdAndUpdate(id, updateData, { new: true });
  }

  async deleteEvent(id) {
    return await Event.findByIdAndDelete(id);
  }
}
