import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
   String _value="";
   String display="";
  void _onPressed(String value){
    setState(() {
      _value=value;
    });
  }
   void _onClicked() {
    setState(() {
      display=_value;
    });

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Live template'),
      ),
      body:  Container(
        padding:  EdgeInsets.all(32.0),
        child:  Column(
          children:  <Widget>[
             Text(display),
            TextField(onChanged: _onPressed,),
            RaisedButton(onPressed: _onClicked,
            child: Text("Enter Text"),),
          ],
        ),
      ),
    );
  }


}
