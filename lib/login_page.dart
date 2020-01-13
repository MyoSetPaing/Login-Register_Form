import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                          color: Colors.green,
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      onSaved: (str) {
                        print(str);
                      },
                      validator: (str) {
                        if (str.isEmpty) {
                          return 'required';
                        }
                        if (!str.endsWith(".com")) {
                          return 'invalid email';
                        }
                      },
                      decoration: InputDecoration(hintText: "Enter Email"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      onSaved: (str) {
                        print(str);
                      },
                      validator: (str) {
                        if (str.isEmpty) {
                          return 'required password';
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                          }
                        },
                        color: Colors.green,
                        textColor: Colors.white,
                        child: Text("Sign In"),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: FlatButton(
                        onPressed: () {},
                        textColor: Colors.blue,
                        child: Text("Register Here"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
