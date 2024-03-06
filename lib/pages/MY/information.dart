import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Information(
        title: '내 정보',
        content: 'Here is some detailed information about me. I am a Flutter developer with a passion for building beautiful and functional mobile applications. My journey in Flutter began two years ago, and since then, I have been continuously learning and improving my skills to deliver high-quality apps.',
      ),
    ),
  );
}

class Information extends StatefulWidget {
  final String title;
  final String content;

  const Information({Key? key, required this.title, required this.content}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(widget.content),
      ),
    );
  }
}
