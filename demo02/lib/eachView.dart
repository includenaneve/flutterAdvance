import 'package:flutter/material.dart';

class EachView extends StatefulWidget {
  String _title;
  int _imageIndex;
  EachView(this._title, this._imageIndex);
  @override
  _EachViewState createState() => _EachViewState();
}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._title),),
      body: Center(
        child: Image.network('http://qiniu.liujiajian.top/penguin${widget._imageIndex}'),
      ),
    );
  }
}