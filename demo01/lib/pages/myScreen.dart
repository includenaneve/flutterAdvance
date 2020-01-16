import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('个人主页'),),
      body: Center(
        child: Text('个人主页'),
      ),
    );
  }
}