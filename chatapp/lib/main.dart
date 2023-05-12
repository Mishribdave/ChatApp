import 'package:flutter/material.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChitChat',
      theme: ThemeData.dark().copyWith(backgroundColor: Color(0xff7C7B9B)),
      home: Text("Helloo"),
//  primaryColor: Color(0xff7C7B9B),
//         accentColor: Color(0xffFCAAAB),
    );
  }
}
