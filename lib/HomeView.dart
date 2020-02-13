import 'package:flutter/material.dart';

void main() {
  runApp(HomeViwe());
}

class HomeViwe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/icon_home.png"),
                width: 50,
                height: 50,
              ),
              title: Text(
                "首页",
                style: TextStyle(color: Colors.black),
              ),
              activeIcon: Image(
                image: AssetImage("images/icon_home_click.png"),
              )),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/icon_object.png"),
                width: 50,
                height: 50,
              ),
              title: Text(
                "项目",
                style: TextStyle(color: Colors.black),
              ),
              activeIcon:
                  Image(image: AssetImage("images/icon_object_click.png"))),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("images/icon_navigation.png"),
                width: 50,
                height: 50,
              ),
              title: Text(
                "导航",
                style: TextStyle(color: Colors.black),
              ),
              activeIcon:
                  Image(image: AssetImage("images/icon_navigation_click.png"))),
          BottomNavigationBarItem(
              icon: Image(image: AssetImage("images/icon_individual.png")),
              title: Text(
                "个人",
                style: TextStyle(color: Colors.black),
              ),
          activeIcon: Image(image: AssetImage("images/icon_individual_click.png")))
        ],
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
      ),
    );
  }
}
