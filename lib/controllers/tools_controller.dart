import 'package:flutter/material.dart'; // For Icons
import '../models/performance_model.dart'; // PerformanceModel import
import '../models/tool_model.dart'; // ToolModel import

class ToolsController {
  // Data for the "Last 7 Days Performance" section.
  List<PerformanceModel> getPerformanceData() {
    return [
      PerformanceModel(
        title: "Conversations started",
        value: "8",
        icon: Icons.message_outlined, // Fixed syntax error
      ),
      PerformanceModel(
        title: "Catalog views",
        value: "--",
        icon: Icons.calendar_today, // Added icon (make sure to add one)
      ),
      PerformanceModel(
        title: "Status views",
        value: "489 ↑",
        icon: Icons.visibility, // Added icon (make sure to add one)
      ),
    ];
  }

  // Data for the "Business Tools" section.
  List<ToolModel> getBusinessTools() {
    return [
      ToolModel(
        title: "Send your first message",
        description: "Welcome new customers with an automatic greeting.",
        icon: Icons.messenger_outline, // Icon is IconData type
      ),
      ToolModel(
        title: "Create a catalog",
        description: "Share your products and services in your catalog.",
        icon: Icons.shopping_basket_outlined, // Icon is IconData type
      ),
      ToolModel(
        title: "Set up quick replies",
        description: "Save time by using quick replies for common questions.",
        icon: Icons.reply_all, // Icon is IconData type
      ),
    ];
  }
}
