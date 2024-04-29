import 'package:care_brecelet/model/loginScreen.dart';
import 'package:care_brecelet/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

import 'VertifyScreen.dart';

class ForgetPass extends StatelessWidget {
  static const String routeName = 'forget';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 70,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
                onTap: (){
                  Navigator.of(context).pop(loginScreen.routeName);
                },
                child: Icon(Icons.arrow_back_ios_new_outlined)),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 30,),
              Text('Forgot password', style:TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 27,),
            Text('Please enter your email to reset the password', style: TextStyle(fontSize: 17),)
          ],),

          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 30,),
            Text('Your Email', style: TextStyle(fontSize: 17),),
          ],),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomTextField(hintText: 'Enter your email', textInputType: TextInputType.text,),
          ),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width:320,
            child: Expanded(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF9177DC)),
                  onPressed: (){
                    Navigator.of(context).pushNamed(VertifyScreen.routeName);
                  },
                  child: Text("Reset password", style: TextStyle(color: Colors.white, fontSize: 18),)),
            ),
          ),
        ],
      )
        ],)

    );
  }
}
