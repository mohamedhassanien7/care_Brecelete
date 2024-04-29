import 'package:care_brecelet/view/screens/PasswordResetScreen.dart';
import 'package:care_brecelet/view/screens/doneScreen.dart';
import 'package:flutter/material.dart';
import '../widgets/customTextField.dart';

class NewPassScreen extends StatelessWidget {
  static const String routeName = 'NewPass';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.transparent,),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: InkWell(
                  onTap: (){
                    Navigator.of(context).pop(PasswordResetScreen.routeName);
                  },
                  child: Icon(Icons.arrow_back_ios_rounded)),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 35,),
                Text('Set a new password', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 29,),
                Text('Create a new password. Ensure it differs from \n previous ones for security', style: TextStyle(fontSize: 16),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextField(hintText: 'Enter your new password', textInputType: TextInputType.text),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextField(hintText: 'Re-enter password', textInputType: TextInputType.text),
            ),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 300,
                  child: Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF9177DC)),
                        onPressed: (){
                          Navigator.of(context).pushNamed(doneScreen.routeName);
                        },
                        child: Text("update password", style: TextStyle(color: Colors.white, fontSize: 20),)),
                  ),
                )
              ],)
          ],
        ),
      ),
    );
  }
}
