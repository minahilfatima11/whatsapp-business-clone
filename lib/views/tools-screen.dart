import 'package:flutter/material.dart';
import '../widgets/business_tools_section.dart';

import 'last_7_days_section.dart';
import 'whats_next_section.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0), // Adjust the height of the AppBar
        child: Column(
          children: [
            SizedBox(
              height: 10, // Adjust the height for space above the AppBar
            ),
            AppBar(
              centerTitle: false,
              elevation: 0,
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: const Text(
                "Tools",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.camera_alt),
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  onPressed: () {},
                ),
              ],
            ),
            Divider(
              color: Colors.grey[200],
              thickness: 0.2,
              height: 1,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Last7DaysSection(),
            WhatsNextSection(),
            BusinessToolsSection(),
          ],
        ),
      ),
    );
  }
}
