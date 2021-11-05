import 'package:flutter/material.dart';
import 'package:untitled/widgets/bottom_bar.dart';
import 'package:flutter/services.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    TabController controller;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Test",
      theme: ThemeData(
        primaryColor: Colors.blueGrey
      ),
      home: Page(),
    );
  }
}

class Page extends StatelessWidget {
  const Page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Test",
            style: TextStyle(
              color: Colors.blueGrey
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              onPressed: (){
                print('search');
              },
              icon: Icon(
                Icons.search,
                color: Colors.blueGrey,
              )
            )
          ],
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