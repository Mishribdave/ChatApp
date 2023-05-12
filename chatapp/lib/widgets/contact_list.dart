import 'package:chatapp/screens/mobile_chat_screen.dart';
import 'package:chatapp/screens/mobile_screen.dart';
import 'package:chatapp/widgets/info.dart';
import 'package:flutter/material.dart';

class contact_list extends StatelessWidget {
  const contact_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: info.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => mobile_chat_screen(),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        title: Text(info[index]['name'].toString(),
                            style: TextStyle(fontSize: 15)),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(info[index]['message'].toString(),
                              style: TextStyle(fontSize: 15)),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              info[index]['profilePic'].toString()),
                        ),
                        trailing: Text(
                          info[index]['time'].toString(),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Divider(
            color: Colors.deepPurple,
            indent: 85,
          )
        ],
      ),
    );
  }
}
