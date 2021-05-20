import 'package:flutter/material.dart';
import 'package:fyrwatch/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  final Function onLogInSelected;

  Body({@required this.onLogInSelected});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Option selectedOption = Option.FyrIntro;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              shadowColor: black.withOpacity(0.25),
              color: white.withOpacity(0.03),
              child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: size.height *
                      (size.height > 550
                          ? 0.75
                          : size.height > 660
                              ? 0.85
                              : 0.95),
                  width: 625,
                  child: Center(
                      child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "fyrwatch".toUpperCase(),
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                                color: orange,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                shadows: <Shadow>[
                                  Shadow(
                                    offset: Offset(5.0, 5.0),
                                    blurRadius: 5.0,
                                    color: violet.withOpacity(0.5),
                                  )
                                ]),
                          ),
                          Text(
                            "A distributed real-time wireless sensor network designed to redefine the limits of observability for forest fires coupled with an early warning system that offers prescriptive suggestions to aid control efforts.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              color: white.withOpacity(0.750),
                            ),
                          ),
                          FittedBox(
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: purple,
                                  borderRadius: BorderRadius.circular(34),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      height: 38,
                                      width: 38,
                                      decoration: BoxDecoration(
                                        color: orange,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: purple,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 15),
                                    GestureDetector(
                                      onTap: () {
                                        widget.onLogInSelected();
                                        // Navigator.of(context).push(
                                        //     MaterialPageRoute(builder: (context) => page()));
                                      },
                                      child: Text(
                                        "Get Started".toUpperCase(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19,
                                        ),
                                      ),
                                      // SizedBox(width: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))))
        ],
      ),
    );
  }
}
