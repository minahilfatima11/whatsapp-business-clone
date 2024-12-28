import 'package:flutter/material.dart';
import 'package:whatsapp_business/views/chats-screen.dart';
import 'package:whatsapp_business/views/home-screen.dart';
import 'package:whatsapp_business/views/spalsh-screen.dart';

import 'package:whatsapp_business/views/updates-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: SplashScreen()

    );
  }
}
