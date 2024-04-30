import 'package:care_brecelet/view/screens/loginScreen2.dart';
import 'package:care_brecelet/view/screens/verify_code.dart';
import 'package:care_brecelet/view/screens/verify_code2.dart';
import 'package:care_brecelet/view/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class login_patient_guardian extends StatelessWidget {
  static const String routeName = 'LoginPatient22';
   const login_patient_guardian({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pop(loginScreen2.routeName);
            },
            child: Icon(Icons.arrow_back_outlined)),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Basic Data",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                  ],
                ),
              ),

              CustomTextField(hintText: 'First Name', textInputType: TextInputType.name , color: Colors.white,),
              CustomTextField(hintText: 'Last Name', textInputType: TextInputType.name, color: Colors.white,),
              CustomTextField(hintText:'Email', textInputType: TextInputType.text, color: Colors.white,),

              CustomTextField(hintText:'password', textInputType: TextInputType.text,isObscured: true , color: Colors.white,),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Container(
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(15),
              //               border: Border.all(
              //                 color: Colors.grey,
              //               )),
              //           child: TextFormField(
              //             obscureText: true,
              //             style: TextStyle(
              //               fontSize: 20,
              //             ),
              //             decoration: InputDecoration(
              //               suffixIcon: Icon(Icons.visibility_off),
              //               contentPadding: EdgeInsets.all(5),
              //               border:InputBorder.none,
              //               hintText: "Password",
              //               hintStyle: TextStyle(
              //                   color: Colors.black, fontWeight: FontWeight.w300),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),


              // form(" Confirm Password"),
               CustomTextField(hintText: 'Confirm Password', textInputType: TextInputType.text, color: Colors.white,),
              SizedBox(
                height: 10,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(30.0),
              //       child: InkWell(
              //           onTap: () {
              //             Navigator.of(context)
              //                 .pushNamed(login_patient_guardian_rest.routeName);
              //           },
              //           child: Container(
              //             height: 80,
              //             width: 90,
              //             decoration: const BoxDecoration(
              //                 color: Color(0xFFE48F2A),
              //                 borderRadius:
              //                     BorderRadius.all(Radius.circular(20))),
              //             child: const Center(
              //               child: Icon(Icons.arrow_forward, size: 40),
              //             ),
              //           )),
              //     )
              //   ],
              // )
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*.7,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF9177DC)),
                        onPressed: (){
                          Navigator.of(context).pushNamed(login_patient_guardian_rest.routeName);
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

class form extends StatelessWidget {
  final String hintText;
  const form(this.hintText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
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
                  contentPadding: EdgeInsets.all(5),
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w300),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class login_patient_guardian_rest extends StatelessWidget {
  static const String routeName = 'login3';

  const login_patient_guardian_rest({super.key});

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
                      Navigator.of(context).pushNamed(VerifYCode2.routeName);
                    },
                    child: Text("Done", style: TextStyle(color: Colors.white, fontSize: 20),)),
            )

          ],
        ),
      ),
    );
  }
}
