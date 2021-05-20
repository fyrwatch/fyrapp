import 'package:fyrwatch/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CloudStorageInfo {
  final Icon icon;
  final String /*svgSrc,*/ title, totalStorage;
  final int numOfFiels, percentage;
  final Color color;

  CloudStorageInfo(
      {this.icon,
      // this.svgSrc,
      this.title,
      this.totalStorage,
      this.numOfFiels,
      this.percentage,
      this.color});
}

List demoMyFiels = [
  CloudStorageInfo(
    title: "Humidity",
    numOfFiels: 80,
    icon: Icon(MdiIcons.waterPercentAlert),
    // svgSrc: "assets/icons/Documents.svg",
    totalStorage: "75%",
    color: teal,
    percentage: 94,
  ),
  CloudStorageInfo(
    title: "Temperature",
    numOfFiels: 50,
    icon: Icon(MdiIcons.thermometerAlert),
    // svgSrc: "assets/icons/google_drive.svg",
    totalStorage: "33 C",
    // color: Color(0xFFFFA113),
    color: red,
    percentage: 66,
  ),
  CloudStorageInfo(
    title: "Gas",
    numOfFiels: 10000,
    icon: Icon(MdiIcons.gasCylinder),
    // svgSrc: "assets/icons/one_drive.svg",
    totalStorage: "200 ppm",
    // color: Color(0xFFA4CDFF),
    color: gas,
    percentage: 2,
  ),
  CloudStorageInfo(
    title: "Flame",
    numOfFiels: 1100,
    icon: Icon(MdiIcons.fire),
    // svgSrc: "assets/icons/drop_box.svg",
    totalStorage: "260 nm",
    color: flame,
    // color: Color(0xFF007EE5),
    percentage: 24,
  ),
];
