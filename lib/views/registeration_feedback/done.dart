import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Done extends StatefulWidget {
  @override
  _Donestate createState() => _Donestate();
}

class _Donestate extends State<Done> {
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 2), () {
      Navigator.pop(context);
    });
  }

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
                          Container(
                            margin: EdgeInsets.only(
                                top: 0, left: 10, right: 10, bottom: 250),
                            alignment: Alignment.center,
                            child: Image.asset(
                              'lib/assets/Ellipse.png',
                              height: 220,
                              width: 220,
                            ),
                          ),
                          Container(
                            child: Text(
                              'REGISTERATION SUCCESSFUL!',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white),
                            ),
                            margin: EdgeInsets.only(top: 330, left: 130, right: 40),
                          )
                        ],
                      ),
                    )
                  ],
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
