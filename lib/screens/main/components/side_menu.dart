import 'dart:ui';

import 'package:fyrwatch/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyrwatch/screens/home/home_screen.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // it enables scrolling
        child: Column(
          children: [
            DrawerHeader(
              child: Text(
                '\n\nFYRWATCH',
                style: TextStyle(
                    color: orange, fontWeight: FontWeight.bold, fontSize: 25),
                textAlign: TextAlign.justify,
              ),
            ),
            DrawerListTile(
              title: "Dashbord",
              svgSrc: "assets/icons/menu_dashbord.svg",
              press: () {},
            ),
            // DrawerListTile(
            //   title: "Home",
            //   svgSrc: ,

            //   press: () {},
            // ),
            // DrawerListTile(
            //   title: "GitHub",
            //   svgSrc: "assets/icons/menu_task.svg",
            //   press: () {},
            // ),
            // DrawerListTile(
            //   title: "Documents",
            //   svgSrc: "assets/icons/menu_doc.svg",
            //   press: () {},
            // ),
            // DrawerListTile(
            //   title: "Store",
            //   svgSrc: "assets/icons/menu_store.svg",
            //   press: () {},
            // ),
            DrawerListTile(
              title: "Notification",
              svgSrc: "assets/icons/menu_notification.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Profile",
              svgSrc: "assets/icons/menu_profile.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Sign Out",
              svgSrc: "assets/icons/menu_setting.svg",
              press: () {
                Get.to(HomeScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key key,
    // For selecting those three line once press "Command+D"
    @required this.title,
    @required this.svgSrc,
    @required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
