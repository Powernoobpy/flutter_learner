import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_learner/todoItems.dart';

void main() => runApp(MyApp());
var title = "TitleTest";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: <Widget>[tab,TodoItem(),TodoItem(),ColorSection]
        ),
      ),
    );
  }
}

Widget tab = Container(
    color: Colors.purpleAccent,
    height: 45,
    padding: EdgeInsets.all(10.0),
    child: Row(children: <Widget>[
      Expanded(
        child: Text(title, style: TextStyle(fontSize: 20)),
      ),
      Expanded(child: Button()),
      Expanded(child: TickImg())
      ]
    )
);

class TickImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/tick.png');
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          color: Colors.white,
          child: Text(title),
            elevation: 6.0,
            onPressed: (){Buttontest(context);}),
    );
  }

  void Buttontest(BuildContext context){
    var alert = AlertDialog
      (title: Text("test"),
        content: Text(title),);
      showDialog(
        context: context,
        builder: (BuildContext context){
        return alert;
        }
    );
  } 
}

Widget ColorSection = Container(
  height: 150,
  color: Colors.redAccent,
);
