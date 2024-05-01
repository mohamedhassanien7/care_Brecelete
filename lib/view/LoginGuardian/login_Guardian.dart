import 'dart:ui';
import 'package:care_brecelet/view/LoginPatient/login_patient_guardian.dart';
import 'package:care_brecelet/view/LoginGuardian/verify_code3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../widgets/customTextField.dart';

class LoginGuardian extends StatelessWidget {
  static const String routeName = 'loginGuardian';

  const LoginGuardian({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pop(login_patient_guardian.routeName);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CustomTextField(hintText: 'Home Address', textInputType: TextInputType.text ,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CustomTextField(hintText: 'Phone Number 1', textInputType: TextInputType.text,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CustomTextField(hintText: 'Phone Number 2', textInputType: TextInputType.text,color: Colors.white,),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "  Day",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "  Month",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: " Year",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CustomTextField(hintText: 'Gender', textInputType: TextInputType.text, color: Colors.white,),
            ),
            SizedBox(
              height: 10,
            ),

            SizedBox(width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF9177DC)),
                  onPressed: (){
                    Navigator.of(context).pushNamed(VerifYCode3.routeName);
                  },
                  child: Text("Done", style: TextStyle(color: Colors.white, fontSize: 20),)),
            )

          ],
        ),
      ),
    );
  }
}
