import 'package:flutter/material.dart';
import 'fadeRouter.dart';
import 'scaleRouter.dart';
import 'rotateScaleRouter.dart';

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
            // Navigator.push(context, FadeRouter(SecondPage())); // 渐隐渐现
            Navigator.push(context, ScaleRouter(SecondPage())); // 放大缩小
            // Navigator.push(context, RoutateScaleRouter(SecondPage())); // 旋转放大缩小
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

