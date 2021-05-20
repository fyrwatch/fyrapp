// import 'package:fyrwatch/Screens/login/page.dart';
// import 'package:fyrwatch/Screens/home/components/login.dart';
import 'package:fyrwatch/constants.dart';
import 'package:flutter/material.dart';
import 'package:fyrwatch/screens/home/home_screen.dart';
// import 'package:fyrwatch/Components/default_button.dart';
import 'package:fyrwatch/url.dart';
import 'menu_item.dart';

import 'package:fyrwatch/screens/main/main_screen.dart';
import 'package:get/get.dart';

import 'package:provider/provider.dart';
import 'package:fyrwatch/controllers/MenuController.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: white.withOpacity(0.03),
        // gradient: LinearGradient(
        //     begin: Alignment.centerLeft,
        //     end: Alignment.centerRight,
        //     colors: <Color>[white, white]),
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
      child: Row(children: <Widget>[
        Image.asset(
          "assets/images/favicon-32x32.png",
          height: 25,
          alignment: Alignment.topCenter,
        ),
        SizedBox(width: 5),
        // Text(
        //   "fyrwatch".toUpperCase(),
        //   style: TextStyle(
        //       fontSize: 22,
        //       fontWeight: FontWeight.w900,
        //       fontFamily: 'Montserrat-Black.ttf',
        //       color: Colors.orange),
        // ),
        // Spacer(),
        MenuItem(
          title: "Home",
          press: () {
            Get.to(HomeScreen());
          },
        ),
        // MenuItem(
        //   title: "About",
        //   press: () {},
        // ),
        // MenuItem(
        //   title: "Dashboard",
        //   press: () {
        //     Get.to(
        //       MultiProvider(
        //         providers: [
        //           ChangeNotifierProvider(
        //             create: (context) => MenuController(),
        //           ),
        //         ],
        //         child: MainScreen(),
        //       ),
        //     );
        //   },
        // ),
        MenuItem(
          title: "GitHub",
          press: () {
            launchgit();
          },
        ),
        MenuItem(
          title: "Contact",
          press: () {
            launchmail();
          },
        )

        // MenuItem(
        //   title: "Login",
        //   press: () {},
        // ),
        //   Spacer(),

        //   GestureDetector(
        //                     onTap: () {
        //                       Option=LogIn;
        //                     },
        //                     child: Text(
        //                       "Login".toUpperCase(),
        //                       style: TextStyle(
        //                         color: white1,
        //                         fontWeight: FontWeight.bold,
        //                         fontSize: 19,
        //                       ),
        //                     ),
        //       //   Navigator.of(context)
        //       //       .push(MaterialPageRoute(builder: (context) => page()));

        // ],
      ]),
    );
  }
}

// class CustomAppBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }
