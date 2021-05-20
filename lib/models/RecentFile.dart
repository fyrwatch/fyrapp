import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:fyrwatch/constants.dart';

class RecentFile {
  final Icon icon;
  final String title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFile(
    icon: Icon(MdiIcons.thermometer, color: red),
    title: "Temperature",
    date: "01-03-2021",
    size: "30 C",
  ),
  RecentFile(
    icon: Icon(MdiIcons.waterPercentAlert, color: teal),
    title: "Humidity",
    date: "27-02-2021",
    size: "70%",
  ),
  RecentFile(
    icon: Icon(MdiIcons.moleculeCo, color: gas),
    title: "Gas",
    date: "23-02-2021",
    size: "220 ppm",
  ),
  RecentFile(
    icon: Icon(MdiIcons.fire, color: flame),
    title: "Flame",
    date: "21-02-2021",
    size: "200 nm",
  ),
  RecentFile(
    icon: Icon(MdiIcons.thermometer, color: red),
    title: "Temperature",
    date: "01-05-2021",
    size: "33 C",
  ),
  RecentFile(
    icon: Icon(MdiIcons.waterPercentAlert, color: teal),
    title: "Humidity",
    date: "27-01-2021",
    size: "72%",
  ),
  RecentFile(
    icon: Icon(MdiIcons.moleculeCo, color: gas),
    title: "Gas",
    date: "23-01-2021",
    size: "230 ppm",
  ),
  RecentFile(
    icon: Icon(MdiIcons.fire, color: flame),
    title: "Flame",
    date: "12-02-2021",
    size: "250 nm",
  ),
  RecentFile(
    icon: Icon(MdiIcons.thermometer, color: red),
    title: "Temperature",
    date: "01-04-2021",
    size: "33 C",
  ),
  RecentFile(
    icon: Icon(MdiIcons.waterPercentAlert, color: teal),
    title: "Humidity",
    date: "13-02-2021",
    size: "60%",
  ),
  RecentFile(
    icon: Icon(MdiIcons.moleculeCo, color: gas),
    title: "Gas",
    date: "23-01-2021",
    size: "200 ppm",
  ),
  RecentFile(
    icon: Icon(MdiIcons.fire, color: flame),
    title: "Flame",
    date: "12-02-2021",
    size: "220 nm",
  ),
];
