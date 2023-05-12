import 'package:chatapp/widgets/chat_list.dart';
import 'package:chatapp/widgets/info.dart';
import 'package:flutter/material.dart';

class mobile_chat_screen extends StatelessWidget {
  const mobile_chat_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff7C7B9B),
        title: Text(info[0]['name'].toString()),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatList()),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 255, 255, 255),
              labelStyle: TextStyle(color: Colors.white),
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.emoji_emotions, color: Colors.grey),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.camera_alt, color: Colors.grey),
                      Icon(Icons.attach_file, color: Colors.grey),
                      Icon(Icons.send, color: Colors.grey),
                    ],
                  ),
                ),
              ),
              hintText: 'Type a message',
             hintStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none)),
              contentPadding: EdgeInsets.all(10),
            ),
          ),
          ],
      ),
    );
  }
}
