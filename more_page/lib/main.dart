import 'package:flutter/material.dart';
import 'package:more_page/view/more.view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MorePage',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MorePage(),
    );
  }
}
