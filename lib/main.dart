import 'package:flutter/material.dart';

import './layout.dart';

/*
App Icon Image from: https://icons8.com/icons/set/business-card
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double _topPadding = 50.0;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.teal[400],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: _topPadding),
              child: Layout(),
            ),
          ),
        ),
      ),
    );
  }
}
