import 'package:flutter/material.dart';

void main() {
  runApp(IndividualView());
}

class IndividualView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndividualPage(),
    );
  }
}

class IndividualPage extends StatefulWidget {
  IndividualPage({Key key}) : super(key: key);

  @override
  IndividualState createState() => IndividualState();
}

class IndividualState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("我的"),
      ),
    );
  }
}
