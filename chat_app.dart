import 'package:chat_app/chatMessage.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage> [];


  void handleSubmit(String text){
    textController.clear();

    ChatMessage message = ChatMessage(text: text,);
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget textComposerWidget(){
    return IconTheme(
      data: const IconThemeData(
        color: Colors.blue
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        padding: const EdgeInsets.all(4.0),
        child: Row(
      children: <Widget>[
        Flexible(child: TextField(
        decoration: const InputDecoration.collapsed(hintText: "Send a message"),
        controller: textController,
        onSubmitted: handleSubmit,
      ),
      ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.8),
          child: IconButton(
              onPressed: ()=> handleSubmit(textController.text),
              icon: Icon(Icons.send)),
        )
      ]
      ),
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,),

        ),
        Divider(
          height: 1.0,

        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,

          ),
          child: textComposerWidget(),
        )
      ],
    );
  }
}
