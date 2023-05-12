import 'package:chatapp/widgets/contact_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mobileScreenLayout extends StatefulWidget {
  const mobileScreenLayout({super.key});

  @override
  State<mobileScreenLayout> createState() => _mobileScreenLayoutState();
}

class _mobileScreenLayoutState extends State<mobileScreenLayout> 
 with SingleTickerProviderStateMixin {

   late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(    
        appBar:  AppBar(
        elevation: 0,
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
        bottom:TabBar(
                          controller: tabController,
                          labelColor: Colors.white,
                          unselectedLabelColor:
                              Color.fromARGB(255, 249, 249, 249),
                          indicatorColor: Color(0xffFCAAAB),
                          indicatorWeight: 3,
                          indicator: BoxDecoration(
                            color: Color(0xffFCAAAB),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          tabs: [
                            Tab(
                              text: "Chats",
                            ),
                            Tab(
                              text: "Status",
                            ),
                            Tab(
                              text: "Calls",
                            ),
                          ]) ,
      ),
        body: contact_list(),        
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xff7C7B9B),
          child: Icon(Icons.comment, color: Colors.white,),
        ),
      ),
    );
  }
}
