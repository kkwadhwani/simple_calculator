import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator App",
      theme: ThemeData(primaryColorDark: Colors.grey),
      home: HomePage(),
    );
  }
}