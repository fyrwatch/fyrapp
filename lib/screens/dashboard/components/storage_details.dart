import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Overview",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          SizedBox(height: defaultPadding),
          Text("Node IDs :"),

          StorageInfoCard(
            title: "3160378020",
            // numOfFiels: 80,
            icon: Icon(MdiIcons.numeric0BoxMultipleOutline, color: gas),

            // icon: Icon(MdiIcons.waterPercent, color: teal),
            // // svgSrc: "assets/icons/Documents.svg",
            // title: "Humidity",
            // amountOfFiles: "75%",
            // numOfFiles: 80,
          ),
          StorageInfoCard(
            title: "3160379558",
            // numOfFiels: 50,
            icon: Icon(MdiIcons.numeric1BoxMultipleOutline, color: gas),
            // icon: Icon(MdiIcons.thermometer, color: red),
            // // svgSrc: "assets/icons/media.svg",
            // title: "Temperature",
            // amountOfFiles: "33 C",
            // numOfFiles: 50,
          ),
          StorageInfoCard(
            title: "3160379256",
            // numOfFiels: 10000,
            icon: Icon(MdiIcons.numeric2BoxMultipleOutline, color: gas),
            // icon: Icon(MdiIcons.moleculeCo, color: gas),
            // // svgSrc: "assets/icons/folder.svg",
            // title: "Gas",
            // amountOfFiles: "200 ppm",
            // numOfFiles: 10000,
          ),
          // StorageInfoCard(
          //   icon: Icon(MdiIcons.fire, color: flame),
          //   // svgSrc: "assets/icons/unknown.svg",
          //   title: "Flame",
          //   amountOfFiles: "260 nm",
          //   numOfFiles: 1100,
          // ),
        ],
      ),
    );
  }
}
