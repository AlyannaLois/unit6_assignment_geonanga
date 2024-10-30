import 'package:unit6_assignment_geonanga/components/tab_widget_1.dart';
import 'package:unit6_assignment_geonanga/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
  List<Widget> _tabScreens = [TabWidget1(), TabWidget2()];

    List<Widget> _tabLists = [
    Tab(
      text: "Tab1",
      icon: Icon(Icons.home),
    ),
    Tab(
      text: "Tab2",
      icon: Icon(Icons.settings),
    ),
  ];

 @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabScreens.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("New Home"),
          bottom: TabBar(
            tabs: _tabLists,
          ),
        ),
         body: TabBarView(children: _tabScreens),
      ),   
    );
  }
}