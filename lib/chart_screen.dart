import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frenzychat/chat_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController _messageController= new TextEditingController();
  final List<ChatMessage> _messages= <ChatMessage>[];

  void _handleSubmitted(String text)
  {
    _messageController.clear();
    ChatMessage message=new ChatMessage(
      text:text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }
  Widget _textComposerWidget(){
    return IconTheme(
      data: const IconThemeData(
        color: Colors.blue,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _messageController,
                decoration: const InputDecoration.collapsed(hintText: "Send a message"),
                onSubmitted:_handleSubmitted,
              ),
            ),
            Container(
                child: IconButton(onPressed: ()=>_handleSubmitted(_messageController.text),
                    icon: const Icon(Icons.send)),
            ),
          ],
        )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: ListView.builder(itemBuilder:(_,int index)=>_messages[index],itemCount:_messages.length, padding: EdgeInsets.all(8.0),reverse: true,
        )
        ),
        Divider(height: 1.0,),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )

      ],
    );
  }
}
