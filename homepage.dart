import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double num1 = 0.0, num2 = 0.0, sum = 0.0;

  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();
  void doAddition() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 / num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15.0),
            // margin: EdgeInsets.only(top: 100.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Output: $sum",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 20.0)),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter number here"),
                    controller: t1,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter number here"),
                    controller: t2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          onPressed: doAddition,
                          child: Text(
                            "+",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          color: Colors.blueAccent,
                        ),
                        RaisedButton(
                          onPressed: doSub,
                          child: Text(
                            "-",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          onPressed: doMul,
                          child: Text(
                            "*",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          color: Colors.blueAccent,
                        ),
                        RaisedButton(
                          onPressed: doDiv,
                          child: Text(
                            "/",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          color: Colors.blueAccent,
                        ),
                      ], //Row children
                    ),
                  ),
                  RaisedButton(
                    onPressed: doClear,
                    child: Text("Clear"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
