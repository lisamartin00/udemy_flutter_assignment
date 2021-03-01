// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './message.dart';
import './text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var message = 'Your custom message can appear here!';
  var inputText;

  void onTextChange(value) {
    print('your text $value');
    setState(() {
      inputText = value;
    });
  }

  void onButtonPress() {
    print('your message is now $inputText');
    setState(() {
      message = inputText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Udemy Assignment 1'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Message(message),
              TextControl(handleTextChange: (value) => onTextChange(value)),
              ElevatedButton(
                child: Text('Change Message'),
                onPressed: onButtonPress,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
