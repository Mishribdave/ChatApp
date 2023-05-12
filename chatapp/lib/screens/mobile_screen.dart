import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mobileScreenLayout extends StatelessWidget {
  const mobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff7C7B9B),
            title: Text(
              "ChitChat",
              style: TextStyle(
                color: Color(0xffFCAAAB),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Color(0xffFCAAAB),
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Color(0xffFCAAAB),
                    size: 30,
                  )),
            ],
            bottom: TabBar(tabs: [
              Tab(
                text: 'CHATS',
              )
            ]),
          ),
        ));
  }
}
