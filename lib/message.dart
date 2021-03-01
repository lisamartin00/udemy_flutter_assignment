import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String text;

  Message(this.text); //= 'Your custom message can appear here!');

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
