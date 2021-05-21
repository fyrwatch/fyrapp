import 'dart:html';

import 'package:fyrwatch/models/RecentFile.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../constants.dart';

class RecentFiles extends StatefulWidget {
  @override
  _RecentFilesState createState() => _RecentFilesState();
  // const RecentFiles({
  //   Key key,
  // }) : super(key: key);
}

class _RecentFilesState extends State<RecentFiles> {
  Future getposts() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore
        .collection("meshes")
        .document("10000000e74431f6")
        .collection("pings")
        .getDocuments();
    return qn.documents;
  }

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
            "Recent Uploads",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
// child: StreamBuilder(
//   stream: Firestore.instance.collection('meshes').document('10000000e74431f6').collection('pings').snapshots(),

//   builder: (context,snapshot){
//     if (!snapshot.hasData)
//     return Text('Loading...')
//   }
// ,),

            // child: ListView.builder(
            //   itemExtent: 8,
            //   itemCount: upload.length,

            //   itemBuilder: (context,upload[index]),
            // ),
            // child: StreamBuilder(
            //   stream: Firestore.instance.collection('pings').document('').snapshots(),
            //   builder: (BuildContext context,
            //       AsyncSnapshot<QuerySnapshot> snapshot) {
            //     if (!snapshot.hasData) return new Text('Loading...');
            //     return new ListView(
            //       children: snapshot.data.documents.map((document) {
            //         return new ListTile(
            //           title: new Text(document['title']),
            //           subtitle: new Text(document['type']),
            //         );
            //       }).toList(),
            //     );
            //   },
            // )

            // child: FutureBuilder(builder: _, snapshot)
            // {
            //   if(snapshot.connectionState ==ConnectionState.waiting)
            //   {
            //     return Center(
            //       child: Text("Loading..."),
            //     );
            //   }
            //   else{
            //     ListView.builder(
            //       itemCount: snapshot.data.length,

            //     )

            //   }
            // }
            // child: StreamBuilder(
            //   stream: Firestore.instance
            //       // .collection('meshes')
            //       // .doc('10000000e74431f6')
            //       .collection('pings')
            //       .snapshots(),
            //   builder: (context, snapshot) {
            //     return ListView.builder(
            //         itemCount: snapshot.data.documents.length,
            //         itemBuilder: (context, index) {
            //           DocumentSnapshot pings = snapshot.data.documents[index];
            //           return ListTile(
            //             title: Text(pings['pingtime']),
            //             subtitle: Text(pings['probabilty']),
            //           );
            //         });
            //     // if (snapshot.hasData) {
            //     //   return ListView.builder(
            //     //     itemCount: snapshot.data.length,
            //     //     itemBuilder: (context, index) {
            //     //       return Text(snapshot.data[index]);
            //     //     },
            //     //   );
            //     // } else {
            //     //   return CircularProgressIndicator();
            //     // }
            //   },
            // ),
            // child: StreamBuilder(stream: Firestore.instance.collection("meshes").snapshots(),builder: (BuildContext context, AsynSnapshot snapshot),)
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(
                  label: Text("Probability"),
                ),
                DataColumn(
                  label: Text("Ping Date"),
                ),
                // DataColumn(
                //   label: Text("Value"),
                // ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            // SvgPicture.asset(
            //   // fileInfo.icon,
            //   height: 30,
            //   width: 30,
            // ),
            IconButton(
              icon: fileInfo.icon,
              onPressed: () {},

              // iconSize: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.avgprob),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date)),
      // DataCell(Text(fileInfo.size)),
    ],
  );
}
