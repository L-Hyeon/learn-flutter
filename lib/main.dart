import 'package:flutter/material.dart';
import 'package:untitled/widgets/bottom_bar.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    TabController controller;
    return MaterialApp(
      title: "Share",
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.white
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Test")
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Container(
              child: Center(
                child: Text("home"),
              )
            ),
            Container(
              child: Center(
                child: Text("add"),
              )
            ),
            Container(
              child: Center(
                child: Text("info"),
              )
            ),
          ],
        ),
        bottomNavigationBar: BottomBar(),
      )
    );
  }
}