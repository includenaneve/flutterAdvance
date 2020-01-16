import 'package:flutter/material.dart';
import './pages/homeScreen.dart';
import './pages/emailScreen.dart';
import './pages/accountScreen.dart';
import './pages/myScreen.dart';

class BottomNavigationWidget extends StatefulWidget { // 由状态控制的组件必须要继承动态
  BottomNavigationWidget({Key key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {

  final _BottomNavitionColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> navList = List();
  
  @override
  void initState() {
    navList
      ..add(HomeScreen()) // 建造者模式，就是调用的对象在调用了方法后仍然返回调用对象
      ..add(EmailScreen())
      ..add(AccountScreen())
      ..add(MyScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _BottomNavitionColor,
            ),
            title: Text('主页', style: TextStyle(color: _BottomNavitionColor),)
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _BottomNavitionColor,
            ),
            title: Text('邮箱', style: TextStyle(color: _BottomNavitionColor),)
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              color: _BottomNavitionColor,
            ),
            title: Text('收入', style: TextStyle(color: _BottomNavitionColor),)
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: _BottomNavitionColor,
            ),
            title: Text('forg', style: TextStyle(color: _BottomNavitionColor),)
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}