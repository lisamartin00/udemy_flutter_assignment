import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function handleTextChange;

  TextControl({
    this.handleTextChange,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Your Message',
      ),
      onChanged: (value) => handleTextChange(value),
    );
  }
}
