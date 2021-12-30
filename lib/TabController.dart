import 'package:flutter/material.dart';
import 'package:layoutass2/Grid.dart';
import 'package:layoutass2/Grid2.dart';
import 'package:layoutass2/Grid3.dart';

class TabControllerClass extends StatefulWidget {
  _TabControllerClassState createState() => _TabControllerClassState();
}

class _TabControllerClassState extends State<TabControllerClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          bottom: TabBar(
            tabs: [
              Tab(
                text: " ALL",
              ),
              Tab(text: " Living Room"),
              Tab(text: " Bed Room"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: GridClass(),
            ),
            Container(
              child: GridClassPage2(),
            ),
            Container(
              child: GridClassPage3(),
            ),
          ],
        ),
      ),
    ));
  }
}