import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _TextControl();
    }
}
class _TextControl extends State<MyApp>{
  String name1 = "This changed";
  String name2 = "This changed Again";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Assignment"),),
        body: Column(children: [
          Text(name1),
          RaisedButton(onPressed: (){
            setState(() {
                          name1 = name2;
            print(name1);
                        });
          },
          color: Colors.redAccent,
          child: Text('Change Text'),
          )
          ]),
      )
    );
  }
}