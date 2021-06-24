import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Column(children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Color.fromRGBO(24, 32, 143, 1),
            ),
          ),
          Spacer(
            flex: 7,
          ),
        ]),
        Positioned.fill(
            top: 0,
            child: ListView(
              padding: EdgeInsets.only(top: 20, left: 0, right: 0),
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 70),
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      icon: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Icon(
                          Icons.chevron_right_sharp,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      }),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 0, right: 0),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('EMAIL',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextField()
                            ],
                          ),
                          margin: EdgeInsets.only(top: 57, left: 0, right: 0)),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('PASSWORD',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextField()
                            ],
                          ),
                          margin: EdgeInsets.only(top: 57, left: 0, right: 0)),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 145, right: 0),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                            fontSize: 12,
                          )),
                          onPressed: () {},
                          child: const Text(
                            'Forgot password?',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 100),
                        child: ElevatedButton(
                          // style: style,
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 15)),
                              shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              elevation: MaterialStateProperty.all(0)),
                          onPressed: () {},
                          child: const Text('Sign in'),
                        ),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(top: 10, left: 20, right: 40),
                  width: 700,
                  height: 570,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            offset: Offset(0, 10),
                            color: Color.fromRGBO(0, 0, 0, 0.25))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 80, right: 0),
                  child: Row(
                    children: [
                      Container(
                          child: Text("Don't have an account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12)),
                          margin: EdgeInsets.only(top: 0, left: 0, right: 0)),
                      Container(
                        child: TextButton(
                            child: Text(
                              'Make one',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()),
                              );
                            }),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ],
    )));
  }
}

class Signup extends StatefulWidget {
  @override
  _Signupstate createState() => _Signupstate();
}

class _Signupstate extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Column(children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Color.fromRGBO(24, 32, 143, 1),
            ),
          ),
          Spacer(
            flex: 7,
          ),
        ]),
        Positioned.fill(
            top: 0,
            child: ListView(
              padding: EdgeInsets.only(top: 20, left: 0, right: 0),
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 70),
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      icon: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 0, right: 0),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('EMAIL',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextField()
                            ],
                          ),
                          margin: EdgeInsets.only(top: 50, left: 0, right: 0)),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('PASSWORD',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextField()
                            ],
                          ),
                          margin: EdgeInsets.only(top: 40, left: 0, right: 0)),
                      Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('CONFIRM PASSWORD',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextField()
                            ],
                          ),
                          margin: EdgeInsets.only(top: 40, left: 0, right: 0)),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 100),
                        child: ElevatedButton(
                          // style: style,
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 15)),
                              shape: MaterialStateProperty.resolveWith(
                                  (states) => RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              elevation: MaterialStateProperty.all(0)),
                          onPressed: () {},
                          child: const Text('Sign up'),
                        ),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(top: 10, left: 20, right: 40),
                  width: 700,
                  height: 570,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            offset: Offset(0, 10),
                            color: Color.fromRGBO(0, 0, 0, 0.25))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 80, right: 0),
                  child: Row(
                    children: [
                      Container(
                          child: Text("Already have an account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 12)),
                          margin: EdgeInsets.only(top: 0, left: 20, right: 0)),
                      Container(
                        child: TextButton(
                            child: Text(
                              'Come in',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            }),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ],
    )));
  }
}
