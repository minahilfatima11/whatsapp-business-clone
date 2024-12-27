import 'package:flutter/material.dart';
import 'package:whatsapp_business/models/call_model.dart';

class CallItem extends StatelessWidget {
  final Call call;

  const CallItem({super.key, required this.call});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(call.imagePath),
      ),
      title: Text(
        "${call.name} ${call.callCount}",
        style: TextStyle(
          color: call.isMissed ? Colors.red : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        children: [
          Icon(
            call.callType == "outgoing"
                ? Icons.call_made
                : Icons.call_received,
            color: call.isMissed ? Colors.red : Colors.green,
            size: 16,
          ),
          const SizedBox(width: 4),
          Text(
            call.dateTime,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
      trailing: Icon(
        call.isVideo ? Icons.videocam : Icons.call,
        color: Colors.white,
      ),
    );
  }
}
