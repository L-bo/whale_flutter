import 'package:flutter/material.dart';

void main() {
  runApp(ObjectView());
}

class ObjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ObjectPage(),
    );
  }
}

class ObjectPage extends StatefulWidget {
  ObjectPage({Key key}) : super(key: key);

  @override
  ObjectState createState() => ObjectState();
}

class ObjectState extends State<ObjectPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("项目"),
      ),
    );
  }
}
