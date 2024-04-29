// import 'package:flutter/material.dart';
//
// class PatientInfo extends StatelessWidget {
//   static String routeName= 'patient';
//
//   const PatientInfo({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back_ios_new),
//         backgroundColor: Color(0xFFBAA9E9),
//         centerTitle: true,
//         title: Text("patient information"),
//       ),
//       body: Column(
//         children: [
//           SizedBox(height:25,),
//           Center(child: Image.asset('asset/images/user.png',width: 230,)),
//           DraggableScrollableSheet(
//             builder: (BuildContext context, ScrollController scrollController) {
//               // Your builder code goes here
//               return Container(
//                 color: Color(0xFFBAA9E9),
//                 child: ListView.builder(
//                   controller:scrollController,
//                   itemCount: 4,
//                   itemBuilder: (BuildContext context, int index) {
//                     return ListTile(
//                       title: Text("Item$index"),
//                     );
//                   } ,
//                 ),
//               ); // Replace YourWidget with whatever you want to return
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:care_brecelet/view/homeScreen/patient_details.dart';
import 'package:flutter/material.dart';

class PatientInfo extends StatelessWidget {
  static String routeName= 'patient';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pop(PatientDetails.routeName);
            },
            child: Icon(Icons.arrow_back_ios_new)),
        backgroundColor: Color(0xFFBAA9E9),
        centerTitle: true,
        title: Text("patient information"),
      ),
      body: Column( // Remove Expanded from here
        children: [
          SizedBox(height:25,),
          Center(child: Image.asset('asset/images/user.png',width: 230,)),
          Expanded( // Add Expanded here
            child: DraggableScrollableSheet(
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFBAA9E9),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(27),
                      topLeft: Radius.circular(27)
                    ),
                  ),
                  child: ListView.builder(
                    controller:scrollController,
                    // itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text("Item$index"),
                      );
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

