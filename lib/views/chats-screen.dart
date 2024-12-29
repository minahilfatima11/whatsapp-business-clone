import 'package:flutter/material.dart';
import 'package:whatsapp_business/views/updates-screen.dart';
import '../controllers/chat_controller.dart';
import '../widgets/chat_card.dart';
import '../widgets/circle_avatar_with_indicator.dart';
import 'calls-screen.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final ChatController chatController = ChatController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(height: 10),
          AppBar(
            centerTitle: false,
            elevation: 0,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: const Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
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
          Expanded(
            child: ListView.builder(
              itemCount: chatController.getChats().length,
              itemBuilder: (context, index) => ChatCard(
                chat: chatController.getChats()[index],
                press: () {},
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add_comment,
          color: Colors.black,
        ),
      ),


   /* bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.chat),
              onPressed: () {},
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => CallsScreen()));
              },
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.update_sharp),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => UpdatesScreen()));
              },
            ),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.store_mall_directory_outlined),
              onPressed: () {},
            ),
            label: 'Tools',
          ),
        ],
      ),*/


    );
  }
}
