import 'package:flutter/material.dart';
import 'package:whatsapp_business/views/updates-screen.dart';
import 'package:whatsapp_business/widgets/call_item.dart';
import 'package:whatsapp_business/controllers/calls_controller.dart';


import 'chats-screen.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final callsController = CallsController();
    final calls = callsController.getCalls();

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
                "Calls",
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
            Padding(
              padding: const EdgeInsets.only(top: 0.0, bottom: 10),
              child: const Divider(
                color: Colors.grey,
                thickness: 0.2,
                height: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0 , left: 14.0 , bottom: 12),
              child: Text('Favorites' ,style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.favorite, color: Colors.black),
              ),
              title: Text(
                'Add favorite',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Text(
                'Recent',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 1),
            ...calls.map((call) => CallItem(call: call)).toList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(Icons.add_call, color: Colors.black),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.chat),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ChatsScreen()));
              },
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {

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
