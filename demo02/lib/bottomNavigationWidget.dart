import 'package:flutter/material.dart';
import 'eachView.dart';

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({Key key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  List<Widget> _eachView;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _eachView = List(); // 新增一个数组
    _eachView // 往数组添加两个元素
      ..add(EachView('哥谭镇老大1', 4))
      ..add(EachView('企鹅宝宝', 5));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute( // 新增页面
            builder: (BuildContext context) {
              return EachView('你的新企鹅', 3);
            }
          ));
          // Navigator.of(context).push(MaterialPageRoute( // 新增页面(写法2)
          //   builder: (BuildContext context) {
          //     return EachView('New Page');
          //   }
          // ));
        }, // 响应方式
        tooltip: '立即拍摄',
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.green, // 定义BottomAppBar的背景颜色
        shape: CircularNotchedRectangle(), // 在矩形中心挖一个圆形的缺口
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.mode_comment),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}