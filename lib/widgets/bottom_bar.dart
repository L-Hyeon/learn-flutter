import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        height: 50,
        child: TabBar(
          labelColor: Colors.blueGrey.shade400,
          unselectedLabelColor: Colors.blueGrey.shade100,
          indicatorColor: Colors.black54,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                size: 20),
            ),
            Tab(
              icon: Icon(
                Icons.add,
                size: 20),
            ),
                        Tab(
              icon: Icon(
                Icons.person,
                size: 20),
            ),
          ],
        )
      )
    );
  }
}