import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'api_model.dart';
import 'api_detail.dart';

Future<List<Event>> fetchEvents() async {
  try {
    final response = await http.get(Uri.parse(
        'http://192.168.3.34/hosting_api/Guest/fetch_guest_event_upcoming.php'));
    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body);
      if (jsonBody is List) {
        return jsonBody.map((json) => Event.fromJson(json)).toList();
      }
    }
    throw Exception('Failed to load events');
  } catch (e) {
    throw Exception('Failed to load events: $e');
  }
}

class UpcomingEvent extends StatefulWidget {
  const UpcomingEvent({Key? key}) : super(key: key);

  @override
  State<UpcomingEvent> createState() => _UpcomingEventState();
}

class _UpcomingEventState extends State<UpcomingEvent> {
  late Future<List<Event>> _futureEvents;

  @override
  void initState() {
    super.initState();
    _futureEvents = fetchEvents();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Event>>(
      future: _futureEvents,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final events = snapshot.data!;
          // Use the events data to build your UI
          return ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Upcoming_Event(),
                    ),
                  );
                },
                child: ListTile(
                  title: Text(event.title),
                  subtitle: Text(event.detail),
                  // leading: Image.network(event.image),
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('${snapshot.error}'),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
