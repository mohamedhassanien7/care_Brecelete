import 'package:care_brecelet/view/homeScreen/HomeScreen.dart';
import 'package:care_brecelet/view/homeScreen2/HomeScreen2.dart';
import 'package:care_brecelet/view/homeScreen3/HomeScreen3.dart';
import 'package:flutter/material.dart';
import '../../model/RegisterScreen.dart';
import '../screens/LoginDoctor.dart';
import '../screens/forget_pass.dart';
import 'package:care_brecelet/view/LoginPatient/login_patient_guardian.dart';

class loginScreen2 extends StatelessWidget {
  static const String routeName = 'loginSC22';
  const loginScreen2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 22,),
            Row(
              children: [
                InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(RegisterScreen.routeName);
                    },
                    child: Icon(Icons.arrow_back)),
              ],
            ),
            SizedBox(height: 50,),
            Image.asset('asset/images/patient.png', height: 170),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Color(0xFF9177DC)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Image.asset(
                        "asset/images/Frame.png",
                        width: 30,
                        height: 30,
                        color: Colors.white,
                      )),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "  Email",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 45,
                      decoration:  BoxDecoration(
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Image.asset(
                        "asset/images/Frame2.png",
                        width: 30,
                        height: 30,
                        color: Colors.white,
                      )),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: TextFormField(
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off),
                          border: InputBorder.none,
                          hintText: "  Password",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 0),
            Row(
              children: [
                Positioned(
                    left: 10,
                    child: Container(width: 275,)),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(ForgetPass.routeName);
                    },
                    child: Text(
                      "forget password?",
                      style: TextStyle(color: Color(0xFF9177DC)),
                    ))
              ],
            ),
            const SizedBox(height: 17),
            SizedBox(width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF9177DC)),
                  onPressed: (){
                    Navigator.of(context).pushNamed(HomeScreen2.routeName);
                  },
                  child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),)),
            ),

            SizedBox(
              height: 15,
            ),

            Text('OR',style: TextStyle(color:Colors.grey, fontSize: 20),),
            SizedBox(height: 10,),
            SizedBox(height: 12,),
            InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(login_patient_guardian.routeName);
                },
                child: Text('Don’t have an Account? sign up',style: TextStyle(color: Color(0xFF9177DC)),))
          ],
        ),
      ),
    );
  }
}