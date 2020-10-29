import 'package:flutter/material.dart';

import 'src/pages/home_page.dart';
import 'src/pages/login_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'login',
      debugShowCheckedModeBanner: false,
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'home': (BuildContext context) => HomePage(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
      ),
    );
  }
}