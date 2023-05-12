import 'package:chatapp/screens/mobile_screen.dart';
import 'package:chatapp/screens/webScreen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'responsive/responsive.dart';

void main(List<String> args) {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChitChat',
      theme: ThemeData(fontFamily: GoogleFonts.dmSans().fontFamily).copyWith(
        backgroundColor: Color(0xff7C7B9B),
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: mobileScreenLayout(),
        webScreenLayout: webScreenLayout(),
      ),
    );
//  primaryColor: Color(0xff7C7B9B),
//         accentColor: Color(0xffFCAAAB),
  }
}
