import 'package:flutter/cupertino.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:fyrwatch/constants.dart';

class RecentFile {
  final Icon icon;
  final String avgprob, date;

  RecentFile({
    this.icon,
    this.avgprob,
    this.date,
  });
}

List demoRecentFiles = [
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "12.79",
    date: "2021-05-20T23:15:24",
    // size: "30 C",
  ),
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "13.28",
    date: "2021-05-20T23:15:38",
    // size: "70%",
  ),
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "13.37",
    date: "2021-05-20T23:15:54",
    // size: "220 ppm",
  ),
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "13.29",
    date: "2021-05-20T23:16:09",
    // size: "200 nm",
  ),
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "13.39",
    date: "2021-05-20T23:16:24",
    // size: "33 C",
  ),
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "13.35",
    date: "2021-05-20T23:16:39",
    // size: "72%",
  ),
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "13.87",
    date: "2021-05-20T23:16:53",
    // size: "230 ppm",
  ),
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "12.89",
    date: "2021-05-20T23:17:08",
    // size: "250 nm",
  ),
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "14.32",
    date: "2021-05-20T23:17:23",
    // size: "33 C",
  ),
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "12.55",
    date: "2021-05-20T23:17:38",
    // size: "60%",
  ),
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "12.33",
    date: "2021-05-20T23:17:53",
    // size: "200 ppm",
  ),
  RecentFile(
    icon: Icon(MdiIcons.databasePlus, color: lblue),
    avgprob: "13.51",
    date: "2021-05-20T23:18:08",
    // size: "220 nm",
  ),
];
