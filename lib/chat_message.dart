import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String _name="Sainath";
class ChatMessage extends StatelessWidget {
  final String text;
  ChatMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 6.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(_name[0],style: TextStyle(color: Colors.white),),
            ),
          ),
         Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}
