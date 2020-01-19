import 'package:flutter/material.dart';

class SliderRouter extends PageRouteBuilder {
  final Widget widget;
  SliderRouter(this.widget)
  :super(
    transitionDuration: Duration(seconds: 1),
    pageBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animation2) {
      return widget;
    },
    transitionsBuilder: (BuildContext context, Animation<double> animation1, Animation<double> animaiton2, Widget child) {
      return SliderTransition(
        position: Tween<Offset> (
          begin: Offset(-1.0, 0.0),
          end: Offset(0.0, 0.0)
        )
      );
    }
  );
}