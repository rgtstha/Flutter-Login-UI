import 'package:flutter/material.dart';
import 'package:flutter_ui/Login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: LoginPage(),
      theme: ThemeData(
          primaryColor: Color(0xFF8105D8),
          iconTheme: IconThemeData(
            color: Color(0xFF8105D8),
          )),
    );
  }
}
