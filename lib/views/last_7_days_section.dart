import 'package:flutter/material.dart';
import '../controllers/performance_controller.dart';
import '../widgets/performance_card.dart';


class Last7DaysSection extends StatelessWidget {
  const Last7DaysSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final performanceData = PerformanceController().getPerformanceData();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Last 7 days performance",
            style: TextStyle(fontSize: 14,  color: Colors.grey),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: performanceData.map((data) => PerformanceCard(data: data)).toList(),
          ),
        ],
      ),
    );
  }
}
