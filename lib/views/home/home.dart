import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:startup_namer/views/registeration/registeration.dart';



class Main extends StatefulWidget {
  final FirebaseApp app;

  Main({required this.app});

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
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
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 0),
                      child: SvgPicture.string(
                        '<svg viewBox="28.0 207.0 370.0 691.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="30" stdDeviation="60"/></filter></defs><path transform="translate(28.0, 268.0)" d="M 0 -61 L 370 -4.421476364135742 L 370 630 L 0 630 L 0 -61 Z" fill="#ff8000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>',
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(20, 250, 20, 20),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(250, 30, 20, 320),
              child: ElevatedButton(
                // style: style,
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                    shape: MaterialStateProperty.resolveWith((states) =>
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    elevation: MaterialStateProperty.all(0)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Adding(app: widget.app)),
                  );
                },
                child: const Text(
                  'Add member',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),

            // Column(
            //   children: [],
            // )
          ],
        ),
      ),
    );
  }
}
