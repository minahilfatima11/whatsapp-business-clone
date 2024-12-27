import 'package:flutter/material.dart';
import 'package:whatsapp_business/views/calls-screen.dart';


import '../controllers/updates_controller.dart';
import '../widgets/update_item.dart';
import 'chats-screen.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({super.key});

  @override
  State<UpdatesScreen> createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  final UpdatesController _updatesController = UpdatesController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        color: Colors.black,
        child: ListView(
          children: [
            const SizedBox(height: 10),
            AppBar(
              centerTitle: false,
              elevation: 0,
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: const Text(
                "Updates",
                style: TextStyle(color: Colors.white, fontSize: 20,),
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Text(
                'Status',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.2,
              height: 1,
            ),
            // Wrap this section with SingleChildScrollView for horizontal scroll
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: _updatesController.getUpdates().map((update) {
                    return UpdateItem(update: update);
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
