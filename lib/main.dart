import 'package:flutter/material.dart';

void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
String myText = "Hello World"; 

void _changeText()
{
  setState((){
    if(myText.startsWith("H"))
      myText = "Welcome to Hello World";
    else 
      myText = "Hello World";
  });
}

  Widget _bodyWidget(){
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: new Center(
      child: new Column(
        children: <Widget>[
          new Text(myText),
          new RaisedButton(
            child: new Text("Click"),
            onPressed: _changeText,
          )
        ],
      )
    )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Home Page"),
      ),
      body: _bodyWidget(),
    );
  }
}