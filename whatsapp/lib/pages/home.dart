import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:whatsapp/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight: 40.0,
            backgroundColor: appBarColor,
            title: Text("WhatsApp"),
            centerTitle: false,
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {
                // pop up menu button
              }, icon: Icon(Icons.more_vert))
            ],
            bottom: TabBar(
              tabs: [
                Container(
                    height: 30.0,
                    child: Text(
                      "Chats",
                      style: TextStyle(fontSize: 15.0),
                    )),
                Container(
                    height: 30.0,
                    child: Text(
                      "Status",
                      style: TextStyle(fontSize: 15.0),
                    )),
                Container(
                    height: 30.0,
                    child: Text(
                      "Calls",
                      style: TextStyle(fontSize: 15.0),
                    ))
              ],
            )),
      ),
    );
  }
}
