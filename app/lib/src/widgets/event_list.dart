import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:ipbjp_mobile/widgets.dart';
import 'package:ipbjp_mobile/provider.dart';
import 'package:ipbjp_mobile/controllers.dart';
import 'package:shared/shared.dart';

class EventList extends StatefulWidget {

  const EventList({super.key});

  @override
  State<EventList> createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  final EventController eventController = getIt<EventController>();
  final Logger logger = Logger();
  late List<EventCreationOrUpdateRequestDTO> eventList;

  @override
  void initState() {
    initEventList();
    super.initState();
  }

  initEventList() async {
    await eventController.fetchEvents().then((value) {
      setState(() {
        eventList = eventController.getEvents();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(

      /// Listview for the event list
      child: ListView.builder(
        itemCount: eventController
            .getEvents()
            .length,
        itemBuilder: (_, index) {
          return EventTile(
            event: eventController.getEvents()[index],
          );
        },
      ),
    );
  }

}