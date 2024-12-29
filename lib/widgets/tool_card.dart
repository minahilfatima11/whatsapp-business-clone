import 'package:flutter/material.dart';
import '../models/tool_model.dart';

class ToolCard extends StatelessWidget {
  final ToolModel tool;

  const ToolCard({Key? key, required this.tool}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color:Colors.grey.shade900 ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(tool.icon, size: 28, color: Colors.grey.withOpacity(0.3)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tool.title,
                  style: const TextStyle(fontSize: 13,  color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(tool.description, style: const TextStyle(fontSize: 12,color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
