import 'package:flutter/material.dart';
import 'bottomNavigationWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '不规则底部导航栏',
      theme: ThemeData( // 自定义主题样本
        primarySwatch: Colors.lightBlue
      ),
      home: BottomNavigationWidget(),
    );
  }
}