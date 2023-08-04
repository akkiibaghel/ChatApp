import 'package:flutter/material.dart';

const String name = "Akkii Baghel";
class ChatMessage extends StatelessWidget{

  final String text;
  ChatMessage({required this.text});
  //ChatMessage({required this.text});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text(
                name[0]
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text(name, style: Theme.of(context).textTheme.titleMedium,),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void insert(int i, message) {}
}
