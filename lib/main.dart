import 'package:animationdummy/animated%20screen.dart';
import 'package:animationdummy/wecomescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  PageController _controller = PageController(
    initialPage: 0
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          Welcome(),
          Login(),

        ],
      )
    );
  }
}


