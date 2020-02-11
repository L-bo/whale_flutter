import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/icon_welcome.png"),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Text('Hello Wolrd', style: TextStyle(fontSize: 22.0, color: Colors.white),),
          ),
//          // TODO 这个地方显示背景图片还差屏幕适配
//          child: new Image.asset(
//            "images/icon_welcome.png",
//            fit: BoxFit.fitHeight,
//            width: 450,
//            height: 896,
//          ),
    );
  }
}
