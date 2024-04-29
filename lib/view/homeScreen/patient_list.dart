import 'package:care_brecelet/view/homeScreen/patient_details.dart';
import 'package:flutter/material.dart';

import '../screens/QrPage.dart';

class PatientListView extends StatelessWidget {
  static const String routeName = 'patientlist';
  PatientListView({Key? key}) : super(key: key);
  List<String> patientListItems = [
    'Ahmed ali',
    'mona ali',
    'said ali',
    'samy ali',
    'ali ali',
    'omar ali',
    'bakr ali',
    'mo ali',
    'engy ali',
    'emy ali',
    'mai ali',
    'hany ali',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Patient List'),
      ),
      body: ListView.separated(
        itemCount: patientListItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                PatientDetails.routeName,
                arguments: patientListItems[index],
              );
            },
            child: Container(
              height: 102,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.withOpacity(.4),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.person, color: Colors.white, size: 70,),
                  ),
                  SizedBox(width: 10),
                  Text(patientListItems[index] , style: TextStyle(fontSize: 19),)
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 25);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(QrPage.routeName);
          // Add your onPressed functionality here
        },
        child: Icon(Icons.add , color: Colors.white,),
        backgroundColor: Colors.purple.shade300,
      ),
    );
  }
}