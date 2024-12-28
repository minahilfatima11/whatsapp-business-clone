import 'package:flutter/material.dart';
import 'package:whatsapp_business/views/calls-screen.dart';

import '../controllers/updates_controller.dart';
import '../controllers/channels_controller.dart'; // Import the ChannelsController
import '../widgets/update_item.dart';
import 'chats-screen.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({super.key});

  @override
  State<UpdatesScreen> createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  final UpdatesController _updatesController = UpdatesController();
  final ChannelsController _channelsController = ChannelsController(); // Instance of ChannelsController

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
            SizedBox(height: 30,),

            // Boost Status Container Section (Updated)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 52.0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.grey.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.volume_down_outlined,
                      color: Color(0xFF25D366),
                      size: 18,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Boost Status',
                      style: TextStyle(
                        color: Color(0xFF25D366),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16,),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Text(
                'Channels',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),

            // Vertical Scrolling for Channels (Dynamic content from ChannelsController)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0), // Adjust as needed
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: _channelsController.getChannels().map((channel) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        leading: CircleAvatar(

                          backgroundImage: AssetImage(channel.avatarImage),
                        ),
                        title: Text(
                          channel.name,
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          channel.lastMessage,
                          style: TextStyle(color: Colors.white.withOpacity(0.6)),
                        ),
                        tileColor: Colors.grey[800],
                        trailing: Text(
                          channel.time,
                          style: TextStyle(color: Colors.white.withOpacity(0.6)),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            )

          ],
        ),
      ),

      // Floating Action Buttons for New Updates
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 80,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
                // Navigate to create a new status update
              },
              backgroundColor: Color(0xFF333333),
              child: const Icon(Icons.edit, color: Colors.white),
              mini: true,  // This makes the button smaller
            ),
          ),

          Positioned(
            bottom: 10,
            right: 12,
            child: FloatingActionButton(
              onPressed: () {
                // Navigate to create a new text update

              },
              backgroundColor: Colors.white,
              child: const Icon(Icons.photo_camera_rounded , color: Colors.black,),
            ),
          ),
        ],
      ),
    );
  }
}
