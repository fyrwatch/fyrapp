import 'package:fyrwatch/Screens/home/components/login.dart';
import 'package:flutter/material.dart';
import 'package:fyrwatch/Screens/home/components/appbar.dart';
import 'package:fyrwatch/Screens/home/components/body.dart';

// ignore: unused_import
import 'dart:ui';

import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Option selectedOption = Option.FyrIntro;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wa5.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),

            Spacer(),
            // It will cover 1/3 of free spaces
            AnimatedSwitcher(
              duration: Duration(microseconds: 0),

              //Animation 1
              //transitionBuilder: (widget, animation) => RotationTransition(
              //  turns: animation,
              //  child: widget,
              //),
              // switchOutCurve: Curves.easeInOutCubic,
              // switchInCurve: Curves.fastLinearToSlowEaseIn,

              //Animation 2
              transitionBuilder: (widget, animation) =>
                  ScaleTransition(child: widget, scale: animation),

              // switchOutCurve: Curves.easeInOutCubic,
              // switchInCurve: Curves.fastLinearToSlowEaseIn,
              // switchInCurve: Curves.bounceInOut,
              // switchOutCurve: Curves.elasticOut,

              child: selectedOption == Option.FyrIntro
                  ? Body(
                      onLogInSelected: () {
                        setState(() {
                          selectedOption = Option.LogIn;
                        });
                      },
                    )
                  : LogIn(
                      onFyrSelected: () {
                        setState(() {
                          selectedOption = Option.FyrIntro;
                        });
                      },
                    ),
            ),
            Spacer(
              flex: 2,
            ),

            // it will cover 2/3 of free spaces
          ],
        ),
      ),
    );
  }
}
