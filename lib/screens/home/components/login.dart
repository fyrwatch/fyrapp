// import 'package:fyrwatch/Components/default_button.dart';
// import 'package:fyrwatch/Screens/home/components/action_button.dart';
import 'package:fyrwatch/screens/home/components/action_button.dart';
import 'package:flutter/material.dart';
import 'package:fyrwatch/constants.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:fyrwatch/screens/main/main_screen.dart';
// import 'package:get/get.dart';

// import 'package:provider/provider.dart';
// import 'package:fyrwatch/controllers/MenuController.dart';
// import 'package:fyrwatch/screens/main/main_screen.dart';

class LogIn extends StatefulWidget {
  final Function onFyrSelected;

  LogIn({@required this.onFyrSelected});
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "LOG IN",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: 30,
                          child: Divider(
                            color: orange,
                            thickness: 2,
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            // hintText: 'MeshID',
                            hintText: 'Mesh1234',
                            labelText: 'MeshID',
                            suffixIcon: Icon(
                              Icons.mail_outline,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            // hintText: 'Password',
                            hintText: '********',
                            labelText: 'Password',
                            suffixIcon: Icon(
                              Icons.lock_outline,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 64,
                        ),
                        actionButton("Already logged in"),
                        // GestureDetector(onTap: () {
                        //   Get.to(MainScreen());
                        // }),

                        // GestureDetector(
                        //   onTap: () {
                        //     // MainScreen();
                        //     MultiProvider(
                        //       providers: [
                        //         ChangeNotifierProvider(
                        //           create: (context) => MenuController(),
                        //         ),
                        //       ],
                        //       child: MainScreen(),
                        //     );
                        //   },
                        // ),
                        SizedBox(
                          height: 32,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //     Text(
                            //       "You do not have an account?",
                            //       style: TextStyle(
                            //         color: Colors.grey,
                            //         fontSize: 14,
                            //       ),
                            //     ),
                            //     SizedBox(
                            //       width: 8,
                            //     ),
                            GestureDetector(
                              onTap: () {
                                widget.onFyrSelected();
                              },
                              child: MouseRegion(
                                cursor: SystemMouseCursors.alias,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color: orange,
                                    ),
                                    Text(
                                      "Back",
                                      style: TextStyle(
                                        color: orange,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
