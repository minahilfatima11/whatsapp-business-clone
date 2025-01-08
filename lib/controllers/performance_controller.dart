import 'package:flutter/material.dart';
import '../models/performance_model.dart';

class PerformanceController {
  List<PerformanceModel> getPerformanceData() {
    return [
      PerformanceModel(
        icon: Icons.message_outlined,
        title: "Conversation started",
        value: "8",
      ),
      PerformanceModel(
        icon: Icons.calendar_today,
        title: "Cataloge views",
        value: "--",
      ),
      PerformanceModel(
        icon: Icons.update_sharp,
        title: "Status views Increases",
        value: "489 ↑",
      ),
    ];
  }
}
