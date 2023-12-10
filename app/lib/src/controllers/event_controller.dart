import 'package:flutter/foundation.dart';
import 'package:ipbjp_mobile/repositories.dart';
import 'package:shared/shared.dart';

class EventController extends ChangeNotifier {
  late List<EventCreationOrUpdateRequestDTO> eventsList = [];
  EventRepository eventRepository = EventRepository();

  // fetch data from the database
  Future<void> fetchEvents() async {
    print('EventController');
    try {
      eventsList = await eventRepository.fetchEvents();
      notifyListeners();
    } catch (e) {
      print("Error: ");
      print(e.toString());
    }
  }

  List<EventCreationOrUpdateRequestDTO> getEvents() {
    return eventsList;
  }
}
