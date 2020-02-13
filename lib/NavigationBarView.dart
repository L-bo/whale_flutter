import 'package:flutter/material.dart';

void main() {
  runApp(NavigationBarView());
}

/// 带标题栏的页面
class NavigationBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: NavigationBarPage(),
    );
  }
}

class NavigationBarPage extends StatefulWidget {
  NavigationBarPage({Key key}) : super(key: key);

  @override
  NavigationBarState createState() => NavigationBarState();
}

class NavigationBarState extends State<NavigationBarPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
