import 'package:flutter/material.dart';
import 'package:skype/class.dart';

class Chat_Detail extends StatelessWidget {
  
  const Chat_Detail({super.key, required this.msg,});
  final massage msg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(msg.sms)),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(msg.image),
          
        ]),
      ),
    );
  }
}