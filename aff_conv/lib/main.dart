import 'package:flutter/material.dart';

import 'CardView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> img = [
    'image1.jpg',
    'image2.jpg',
    'image3.jpg',
    'image4.jpg',
    'image5.jpg',
    'image6.jpg',
    'image7.jpg',
    'image8.jpg',
    'image9.jpg',
    'image10.jpg',
  ];

  List<String> txt = [
    'I am strong.',
    'I believe in myself.',
    'Each day is a new opportunity to grow and be a better version of myself.',
    'Every challenge in my life is an opportunity to learn from.',
    'I have so much to be grateful for.',
    'Good things are always coming into my life.',
    'New opportunities await me at every turn.',
    'I have the courage to follow my heart.',
    'Things will unfold at precisely the right time.',
    'I will be present in all the moments that this day brings.',
  ];

  List<Widget> widgets = [];

  MyApp() {
    for (int i = 0; i < img.length; i++) {
      widgets.add(CardView(
        img: img[i],
        text: txt[i],
      ));
    }
  }

  PreferredSizeWidget header() {
    return AppBar(
      title: Text('Affirmations'),
      backgroundColor: Colors.lightBlueAccent,
    );
  }

  Widget body() {
    return ListView(
      children: widgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: header(),
        body: body(),
      ),
    );
  }
}
