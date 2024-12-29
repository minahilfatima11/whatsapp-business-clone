import 'package:flutter/material.dart';
import '../widgets/tool_card.dart';
import '../models/tool_model.dart';

class BusinessToolsSection extends StatelessWidget {
  const BusinessToolsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tools = [
      ToolModel(title: "Send your first message", description: "Welcome new customers with an automatic greeting.", icon: Icons.messenger_outline),
      ToolModel(title: "Create a catalog", description: "Share your products and services in your catalog.", icon: Icons.shopping_basket_outlined),
      ToolModel(title: "Set up quick replies", description: "Save time by using quick replies for common questions.", icon: Icons.reply_all),
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Business tools",
            style: TextStyle(fontSize: 14,  color: Colors.grey),
          ),
          const SizedBox(height: 16),
          ...tools.map((tool) => ToolCard(tool: tool)).toList(),
        ],
      ),
    );
  }
}
