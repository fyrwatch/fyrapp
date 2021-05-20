// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:fyrwatch/constants.dart';

import 'package:fyrwatch/screens/main/main_screen.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';
import 'package:fyrwatch/controllers/MenuController.dart';
// final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

// ignore: non_constant_identifier_names
Widget actionButton(String text) {
  // BuildContext context;
  return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: orange,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: orange.withOpacity(0.2),
                spreadRadius: 4,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: GestureDetector(
              onTap: () {
                Get.to(
                  MultiProvider(
                    providers: [
                      ChangeNotifierProvider(
                        create: (context) => MenuController(),
                      ),
                    ],
                    child: MainScreen(),
                  ),
                );

                // navigatorKey:navigatorKey;
                // navigatorKey.push(MainScreen());
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => MainScreen()),
                // );
                //MainScreen();
                // MultiProvider(
                //   providers: [
                //     ChangeNotifierProvider(
                //       create: (context) => MenuController(),
                //     ),
                //   ],
                //   child: MainScreen(),
                // );
              },
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // onTap: () {
                //   // MainScreen();
                //   MultiProvider(
                //     providers: [
                //       ChangeNotifierProvider(
                //         create: (context) => MenuController(),
                //       ),
                //     ],
                //     child: MainScreen(),
                //   );
                // },
              ))));
}
//         child: GestureDetector(onTap: () {
//                             MainScreen();
//                             MultiProvider(
//                               providers: [
//                                 ChangeNotifierProvider(
//                                   create: (context) => MenuController(),
//                                 ),
//                               ],
//                               child: MainScreen(),
//                             );
//                           }, ),
//         height: 50,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           color: orange,
//           borderRadius: BorderRadius.all(
//             Radius.circular(25),
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: orange.withOpacity(0.2),
//               spreadRadius: 4,
//               blurRadius: 7,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Center(
//           child: Text(
//             text,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),

//         ),
//       ));
// }
