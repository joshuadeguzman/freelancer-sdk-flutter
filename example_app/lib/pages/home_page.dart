import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  static final homePageRoute = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Freelancer example app'),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Account'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('Works'),
          ),
        ],
      ),
    );
  }
}
