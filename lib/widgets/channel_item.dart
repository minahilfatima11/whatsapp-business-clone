import 'package:flutter/material.dart';

class ChannelItem extends StatelessWidget {
  final String update;

  const ChannelItem({super.key, required this.update});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(8.0),
      title: Text(
        update,
        style: const TextStyle(color: Colors.white),
      ),
      leading: const Icon(Icons.tv, color: Colors.white),
      onTap: () {
        // Handle channel item tap
      },
    );
  }
}
