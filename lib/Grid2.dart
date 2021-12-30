import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridClassPage2 extends StatefulWidget {
  @override
  _GridClassPage2State createState() => _GridClassPage2State();
}

var textIndex = 0;
var textIndex2 = 0;
var textIndex4 = 0;
bool value = true;
bool value2 = true;
bool value4 = true;

class _GridClassPage2State extends State<GridClassPage2> {
  void iconPressed1() {
    setState(() {
      textIndex = textIndex + 1;
      value = false;
      print('Icon pressed $textIndex');
    });
  }

    void iconPressed2() {
    setState(() {
      textIndex2 = textIndex2 + 1;
      value2 = false;
      print('Icon pressed $textIndex2');
    });
  }

  void iconPressed4() {
    setState(() {
      textIndex4 = textIndex4 + 1;
      value4 = false;
      print('Icon pressed $textIndex4');
    });
  }


  var actionsTaken = [' OFF ', 'ON'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image(
                              image: AssetImage(value
                                  ? 'assets/ceiling-fan.png'
                                  : 'assets/fan2.jpg'),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 92,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 40),
                              onPressed: iconPressed1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              child: Text(
                            " FAN",
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.left,
                          )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(textIndex),
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),

           Container(
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image(
                              image: AssetImage(value2
                                  ? 'assets/light.png'
                                  : 'assets/lightbulb.png'),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 92,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 40),
                              onPressed: iconPressed2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              child: Text(
                            " LIGHT",
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.left,
                          )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(textIndex2),
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),

          Container(
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage(value4
                                  ? 'assets/tv.png'
                                  : 'assets/tv-on.png'),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 92,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 40),
                              onPressed: iconPressed4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              child: Text(
                            " TV",
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.left,
                          )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(textIndex4),
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}