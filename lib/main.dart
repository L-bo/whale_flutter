import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whale_flutter/NavigationBarView.dart';

import 'HomeView.dart';

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
      routes: {"homeView": (BuildContext context) => new HomeViwe()},
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
  Timer _timer;
  var count = 0;
  String textContent() {
    if (count > 0) {
      return '${count} s';
    } else {
      print('应该跳转界面');
      return '0s';
    }
  }

  @override
  void initState() {
    //Flutter 生命周期 创建时在build之后调用
    print('开始倒计时');

    count = 5;
    final call = (timer) {
      // 预定时间小于1的时候结束计时器
      if (count < 1) {
        Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(
            builder: (BuildContext context) => new NavigationBarView()), (//跳转到主页
            Route route) => route == null);
        _timer.cancel();
      } else {
        setState(() {
          // 大于一的时候重新赋值
          count -= 1;
        });
      }
    };
    if (_timer == null) {
      _timer = Timer.periodic(Duration(seconds: 1), call);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/icon_welcome.png"),
            fit: BoxFit.cover,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          new Container(
            child: new Text(
              textContent(),
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            ),
            margin: EdgeInsets.fromLTRB(0, 50, 20, 0),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // 界面销毁后将计时器取消
    _timer.cancel();
    super.dispose();
  }
}
