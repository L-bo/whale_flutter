import 'package:flutter/material.dart';
import 'package:whale_flutter/HomeView.dart';
import 'package:whale_flutter/IndividualView.dart';
import 'package:whale_flutter/NavigationView.dart';
import 'package:whale_flutter/ObjectView.dart';

void main() {
  runApp(NavigationBarView());
}

/// 带标题栏的页面
class NavigationBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int index = 0;
  List<Widget> pages = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages
      ..add(HomeViwe())
      ..add(ObjectView())
      ..add(NavigationApp())
      ..add(IndividualView());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // 主动显示导航栏上标的文字
        // 选中时才显示标签上的文字 shifting
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/icon_home.png"),
                width: 35,
                height: 35,
              ),
              title: Text(
                "首页",
                style: TextStyle(color: Colors.black),
              ),
              activeIcon: Image(
                image: AssetImage("images/icon_home_click.png"),
                width: 35,
                height: 35,
              )),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/icon_object.png"),
                width: 35,
                height: 35,
              ),
              title: Text(
                "项目",
                style: TextStyle(color: Colors.black),
              ),
              activeIcon: Image(
                image: AssetImage("images/icon_object_click.png"),
                width: 35,
                height: 35,
              )),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/icon_navigation.png"),
                width: 35,
                height: 35,
              ),
              title: Text(
                "导航",
                style: TextStyle(color: Colors.black),
              ),
              activeIcon: Image(
                image: AssetImage("images/icon_navigation_click.png"),
                width: 35,
                height: 35,
              )),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/icon_individual.png"),
                width: 35,
                height: 35,
              ),
              title: Text(
                "个人",
                style: TextStyle(color: Colors.black),
              ),
              activeIcon: Image(
                image: AssetImage("images/icon_individual_click.png"),
                width: 35,
                height: 35,
              ))
        ],
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
      ),
      body: pages[index],
    );
  }
}
