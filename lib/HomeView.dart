import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
  List<String> list = new List();

  var _ipAddress = 'Unknown';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list
      ..add("http://sw-mirror.com/flutter%2Ftestpng.png")
      ..add("http://sw-mirror.com/flutter%2FThailand.png");
    _getIPAddress();
  }

  // 网络请求GET
  _getIPAddress() async {
    var url = 'https://www.wanandroid.com/article/list/0/json';
    var httpClient = new HttpClient();
    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        result = data['data'];
        print(result);
      } else {
        result = 'data 转换字段失败';
      }
    } catch (exception) {
      result = '请求失败';
    }

    if (!mounted) return;
    setState(() {
      _ipAddress = result;
      print(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("首页"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Swiper(
                pagination: //添加标记码
                    SwiperPagination(alignment: Alignment.bottomCenter),
                autoplay: true, //设置自动播放
                itemCount: list.length, //设置item的个数
                itemBuilder: (BuildContext context, int index) {
                  //设置item的内容
                  return Image.network(
                    list[index],
                    fit: BoxFit.fill,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
