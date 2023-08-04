import 'package:chat_app/ChatScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Chat with Akkii'),
      ),
      body: const ChatScreen(),
    );
  }
}
