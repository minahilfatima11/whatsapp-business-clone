import 'package:flutter/material.dart';

class ChannelsWidget extends StatelessWidget {
  final List<Map<String, dynamic>> channels = [
    {'name': 'Tech Insights', 'time': '11:43 AM', 'messages': 4},
    {'name': 'Pakistan Jobs', 'time': '11:40 AM', 'messages': 2},
    {'name': 'Beacon Tutors Pakistan', 'time': '11:30 AM', 'messages': 1},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Channels',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Column(
            children: channels.map((channel) {
              return ChannelCard(
                name: channel['name'],
                time: channel['time'],
                messages: channel['messages'],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class ChannelCard extends StatelessWidget {
  final String name;
  final String time;
  final int messages;

  ChannelCard({required this.name, required this.time, required this.messages});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[900],
      child: ListTile(
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(time),
        trailing: CircleAvatar(
          radius: 12,
          backgroundColor: Colors.green,
          child: Text(
            '$messages',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
