import 'package:flutter/material.dart';
import 'news_manager.dart';
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
  Widget build (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text('Live News'),
      ), 
      body:NewsManager(),
    ),
    );
  }
} 