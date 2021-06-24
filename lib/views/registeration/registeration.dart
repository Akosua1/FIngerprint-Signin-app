import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:startup_namer/components/loading.dart';
import 'package:startup_namer/core/models/staff.dart';
import 'package:startup_namer/views/registeration_feedback/done.dart';
import 'package:uuid/uuid.dart';


class Adding extends StatefulWidget {
  final FirebaseApp app;

  Adding({ required this.app});

  @override
  _Addingstate createState() => _Addingstate(app: app);
}

class _Addingstate extends State<Adding> {

  final FirebaseApp app;


  _Addingstate({required this.app});

  final name_Controller = TextEditingController();
  final email_Controller = TextEditingController();
  final gender_Controller = TextEditingController();
  final staffid_Controller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Stack(
            fit: StackFit.loose,
            // alignment: Alignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'lib/assets/logo.png',
                          height: 220,
                          width: 220,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 0),
                            child: SvgPicture.string(
                              '<svg viewBox="28.0 207.0 370.0 691.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="30" stdDeviation="60"/></filter></defs><path transform="translate(28.0, 268.0)" d="M 0 -61 L 370 -4.421476364135742 L 370 630 L 0 630 L 0 -61 Z" fill="#ff8000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>',
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SingleChildScrollView(
                            padding: EdgeInsets.only(top: 80),
                            child: Column(
                              children: [
                                Text('Registeration',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontStyle: FontStyle.normal,
                                        color: Colors.white)),
                                Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text('Name:',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        Container(
                                          child: TextField(
                                            controller: name_Controller,
                                            decoration: InputDecoration(
                                                filled: true,
                                                focusColor: Colors.white,
                                                contentPadding: EdgeInsets.only(
                                                    top: 5, left: 10),
                                                fillColor: Colors.white,
                                                disabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.blue,
                                                        width: 1)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black,
                                                        width: 1)),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1))),
                                          ),
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0, 0.2),
                                                offset: Offset(0, 5),
                                                blurRadius: 10)
                                          ]),
                                        )
                                      ],
                                    ),
                                    margin: EdgeInsets.fromLTRB(30, 50, 50, 0)),
                                Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text('Email:',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        Container(
                                          child: TextField(
                                            controller: email_Controller,
                                            decoration: InputDecoration(
                                                filled: true,
                                                focusColor: Colors.white,
                                                contentPadding: EdgeInsets.only(
                                                    top: 5, left: 10),
                                                fillColor: Colors.white,
                                                disabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.blue,
                                                        width: 1)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black,
                                                        width: 1)),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1))),
                                          ),
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0, 0.2),
                                                offset: Offset(0, 5),
                                                blurRadius: 10)
                                          ]),
                                        ),
                                      ],
                                    ),
                                    margin: EdgeInsets.fromLTRB(30, 30, 50, 10)),
                                Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text('Gender:',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        Container(
                                          child: TextField(
                                            controller: gender_Controller,
                                            decoration: InputDecoration(
                                                filled: true,
                                                focusColor: Colors.white,
                                                contentPadding: EdgeInsets.only(
                                                    top: 5, left: 10),
                                                fillColor: Colors.white,
                                                disabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.blue,
                                                        width: 1)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black,
                                                        width: 1)),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1))),
                                          ),
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0, 0.2),
                                                offset: Offset(0, 5),
                                                blurRadius: 10)
                                          ]),
                                        ),
                                      ],
                                    ),
                                    margin: EdgeInsets.fromLTRB(30, 15, 50, 50)),
                                Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text('Staff ID:',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        Container(
                                          child: TextField(
                                            controller: staffid_Controller,
                                            decoration: InputDecoration(
                                                filled: true,
                                                focusColor: Colors.white,
                                                contentPadding: EdgeInsets.only(
                                                    top: 5, left: 10),
                                                fillColor: Colors.white,
                                                disabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.blue,
                                                        width: 1)),
                                                enabledBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black,
                                                        width: 1)),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1))),
                                          ),
                                          decoration: BoxDecoration(boxShadow: [
                                            BoxShadow(
                                                color: Color.fromRGBO(0, 0, 0, 0.2),
                                                offset: Offset(0, 5),
                                                blurRadius: 10)
                                          ]),
                                        ),
                                      ],
                                    ),
                                    margin: EdgeInsets.fromLTRB(30, 0, 50, 0)),
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.fromLTRB(10, 100, 20, 0),
                                  child: ElevatedButton(
                                    // style: style,
                                    style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all(Colors.black),
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10)),
                                        shape: MaterialStateProperty.resolveWith(
                                                (states) => RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(0))),
                                        elevation: MaterialStateProperty.all(0)),
                                    onPressed: () async {
                                      print ('The name is: '+ name_Controller.text);
                                      print ('The email is: '+ email_Controller.text);
                                      print ('The gender is: '+ gender_Controller.text);
                                      print ('The staff ID is: '+ staffid_Controller.text);

                                      Staff staff = new Staff(name: name_Controller.text, email: email_Controller.text, gender: gender_Controller.text, staff_id: staffid_Controller.text);
                                      var done = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SavingScreen(app : this.app , staff: staff )),
                                      );
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Add '),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                  margin: EdgeInsets.only(bottom: 50),
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      icon: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Icon(
                          Icons.chevron_left_sharp,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Done()),
                        );
                      }),
                ),
              ),
            ],
          )),
      // Column(
      //   children: [],
      // )
    );
  }
}
