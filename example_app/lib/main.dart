import 'package:flutter/material.dart';

import 'package:example_app/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freelancer example app',
      initialRoute: 'home',
      routes: {
        HomePage.homePageRoute: (BuildContext builder) => HomePage(),
      },
    );
  }
}
