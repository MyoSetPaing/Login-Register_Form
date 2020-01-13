import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  String str;

  Page2(this.str);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            str,
            style: TextStyle(fontSize: 20.0),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Back"),
          )
        ],
      ),
    );
  }
}
