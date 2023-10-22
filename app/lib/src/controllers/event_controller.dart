import 'package:flutter/foundation.dart';
import 'package:ipbjp_mobile/repositories.dart';
import 'package:logger/logger.dart';
import 'package:shared/shared.dart';

class EventController extends ChangeNotifier {
  late List<EventCreationOrUpdateRequestDTO> eventsList = [];
  EventRepository eventRepository = EventRepository();
  Logger logger = Logger();

  // fetch data from the database
  Future<void> fetchEvents() async {
    logger.d('EventController');
    try {
      eventsList = await eventRepository.fetchLocalEvents();
      notifyListeners();
    } catch (e) {
      logger.e("Error: ");
      logger.e(e.toString());
    }
  }

  List<EventCreationOrUpdateRequestDTO> getEvents() {
    return eventsList;
  }
}