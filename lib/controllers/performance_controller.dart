import '../models/performance_model.dart';

class PerformanceController {
  List<PerformanceModel> getPerformanceData() {
    return [
      PerformanceModel(title: "Conversation started", value: "8"),
      PerformanceModel(title: "Catalog views", value: "--"),
      PerformanceModel(title: "Status views Increases", value: "489 ↑"),
    ];
  }
}
