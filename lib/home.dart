import 'package:flutter/material.dart';
import 'chart_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frenzy Chat",style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.blue,),
      body: ChatScreen(),
    );
  }
}
