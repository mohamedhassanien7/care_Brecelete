import 'package:care_brecelet/model/RegisterScreen.dart';
import 'package:care_brecelet/model/loginScreen.dart';
import 'package:care_brecelet/view/screens/photo_screen.dart';
import 'package:care_brecelet/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class LoginDoctor extends StatelessWidget {
  static const String routeName = 'login';
  const LoginDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // appBar: AppBar(
      //   leading: Icon(Icons.arrow_back_outlined),
      //   backgroundColor: Colors.transparent,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(RegisterScreen.routeName);
                  },
                  child: Icon(Icons.arrow_back)),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Basic Data",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ],
                ),
              ),

              CustomTextField(hintText: 'First Name', textInputType: TextInputType.name , color: Colors.white,),
              CustomTextField(hintText: 'Last Name', textInputType: TextInputType.name , color: Colors.white,),
              CustomTextField(hintText:'Email', textInputType: TextInputType.text, color: Colors.white,),
              CustomTextField(hintText:'password', textInputType: TextInputType.text,isObscured: true , color: Colors.white,),
              CustomTextField(hintText: 'Phone number1', textInputType: TextInputType.number, color: Colors.white,),
              CustomTextField(hintText: 'Phone number2', textInputType: TextInputType.number, color: Colors.white,),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.7,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF9177DC)),
                        onPressed: (){
                          Navigator.of(context).pushNamed(FaceRecognition.routeName);
                        },
                        child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 20),)),
                  )
                ],)
            ],
          ),
        ),
      ),
    );
  }
}