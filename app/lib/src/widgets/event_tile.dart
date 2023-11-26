import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:intl/intl.dart';

class EventTile extends StatelessWidget {
  final EventCreationOrUpdateRequestDTO event;
  const EventTile({required this.event, super.key});

  /// simple function to format date
  /// from yyyy-MM-ddTHH:mm:ss to dd/MM/yyyy HH:mm:ss
  String formatDateToBrazilianStandardWithTime(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy HH:mm').format(dateTime).toString();
  }

  /// function to convert form from DateTime object to string
  String formatDateToBrazilianStandard(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy').format(dateTime).toString();
  }

  /// Function that open a dialog to show more details about the event
  void _showMoreDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(event.name ?? "Sem título"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                event.imageUrl ?? "https://www.ipb.org.br/img/logo_ipb.png",
                height: 160,
                width: 300,
                fit: BoxFit.cover,
              ),
              Container(height: 10),
              Text(
                event.description ?? "Sem descrição",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                ),
              ),
              Container(height: 10),
              Text(
                event.endDate != null
                    ? "Data: ${formatDateToBrazilianStandard(event.startDate!)} até ${formatDateToBrazilianStandard(event.endDate!)}"
                    : "Data: ${formatDateToBrazilianStandardWithTime(event.startDate!)}",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Fechar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      // Set the shape of the card using a rounded rectangle border with a 8 pixel radius
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      // Set the clip behavior of the card
      clipBehavior: Clip.antiAliasWithSaveLayer,
      // Define the child widgets of the card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            event.imageUrl ?? "https://www.ipb.org.br/img/logo_ipb.png",
            height: 160,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // Add a container with padding that contains the card's title, text, and buttons
          Container(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Display the card's title using a font size of 24 and a dark grey color
                Text(
                  event.name ?? "Sem título",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey[800],
                  ),
                ),
                // Add a space between the title and the text
                Container(height: 10),
                // Display the card's text using a font size of 15 and a light grey color
                Text(
                  event.endDate != null
                      ? "Data: ${formatDateToBrazilianStandard(event.startDate!)} até ${formatDateToBrazilianStandard(event.endDate!)}"
                      : "Data: ${formatDateToBrazilianStandardWithTime(event.startDate!)}",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                  ),
                ),
                // Add a row with two buttons spaced apart and aligned to the right side of the card
                Row(
                  children: <Widget>[
                    // Add a spacer to push the buttons to the right side of the card
                    const Spacer(),
                    // Add a text button labeled "SHARE" with transparent foreground color and an accent color for the text
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.transparent,
                      ),
                      child: const Text(
                        "Mais detalhes",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        _showMoreDetails(context);
                      },
                    ),
                    // Add a text button labeled "EXPLORE" with transparent foreground color and an accent color for the text
                  ],
                ),
              ],
            ),
          ),
          // Add a small space between the card and the next widget
          Container(height: 5),
        ],
      ),
    );
  }
}
