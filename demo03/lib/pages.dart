import 'package:flutter/material.dart';
import 'customRouter.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('页面1', style: TextStyle(fontSize: 36.0),),
        backgroundColor: Colors.blue,
        elevation: 4.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0
          ),
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute( // 系统默认效果
            //   builder: (BuildContext context) {
            //     return SecondPage();
            //   }
            // ));
            Navigator.push(context, CustomRouter(SecondPage())); // 自定义动画效果
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('页面2', style: TextStyle(fontSize: 36.0),),
        backgroundColor: Colors.pink,
        leading: Container(),
        elevation: 4.0, // appBar底部的boxShadow
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before, 
            color: Colors.white, 
            size: 64.0
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}            

