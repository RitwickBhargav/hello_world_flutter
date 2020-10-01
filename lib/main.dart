import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData.dark(),
      home: HomePage(),
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
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Text(
              myText,
              style: TextStyle(
                fontSize: 22.0,
              ),
            ),
            RaisedButton(
              child: Text(
                "Click", 
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            onPressed: _changeText,
            color: Colors.blue,
            ),
        ],
      )
    )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: _bodyWidget(),
    );
  }
}
