import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "House\nPlants",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onSaved: (str) {
                        if (str.isEmpty) {
                          print(str);
                        }
                      },
                      validator: (str) {
                        if (str.isEmpty) {
                          return 'required';
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "First Name",
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onSaved: (str) {
                        if (str.isEmpty) {
                          print(str);
                        }
                      },
                      validator: (str) {
                        if (str.isEmpty) {
                          return 'required';
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Last Name",
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onSaved: (str) {
                        if (str.isEmpty) {
                          print(str);
                        }
                      },
                      validator: (str) {
                        if (str.isEmpty) {
                          return 'required';
                        }
                        if (!str.endsWith("@gmail.com")) {
                          return "Invalid Gmail";
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onSaved: (str) {
                        if (str.isEmpty) {
                          print(str);
                        }
                      },
                      validator: (str) {
                        if (str.isEmpty) {
                          return 'required';
                        }
                        if (str.length < 6) {
                          return 'At least 6 number';
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                          }
                        },
                        child: Text("Register"),
                        color: Colors.green,
                        textColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Signin Here"),
                        textColor: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
