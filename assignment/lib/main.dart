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

  String name2 = "This changed Again";
  final List _digits = ['1','2','3','4','5'];
   String name1 = '0';
   int i=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Assignment"),),
        body: Column(children: [
          Text(name1),
          RaisedButton(onPressed: (){
            setState(() {            
            name1 = _digits[i];
            i++;
            print(i);
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