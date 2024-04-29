// import 'package:care_bracelet/login_patient_guardian.dart';
// import 'package:care_bracelet/model/RegisterScreen.dart';
// import 'package:care_bracelet/model/loginScreen.dart';
// import 'package:care_bracelet/splashScreen.dart';
import 'package:care_brecelet/view/homeScreen/HomeScreen.dart';
import 'package:care_brecelet/view/homeScreen/patientInfo.dart';
import 'package:care_brecelet/view/homeScreen/patient_details.dart';
import 'package:care_brecelet/view/homeScreen/patient_list.dart';
import 'package:care_brecelet/view/homeScreen2/HomeScreen2.dart';
import 'package:care_brecelet/view/homeScreen3/HomeScreen3.dart';
import 'package:care_brecelet/view/screens/LoginDoctor.dart';
import 'package:care_brecelet/view/screens/NewPassScreen.dart';
import 'package:care_brecelet/view/screens/PasswordResetScreen.dart';
import 'package:care_brecelet/view/homeScreen/Privacy/Privacy_Policy.dart';
import 'package:care_brecelet/view/screens/QrPage.dart';
import 'package:care_brecelet/view/screens/VertifyScreen.dart';
import 'package:care_brecelet/view/screens/doneScreen.dart';
import 'package:care_brecelet/view/screens/forget_pass.dart';
import 'package:care_brecelet/view/screens/generate_qrcode.dart';
import 'package:care_brecelet/view/screens/google_maps.dart';
import 'package:care_brecelet/view/screens/loginForDoctor_2.dart';
import 'package:care_brecelet/view/screens/loginScreen2.dart';
import 'package:care_brecelet/view/screens/login_Guardian.dart';
import 'package:care_brecelet/view/screens/profile_screen.dart';
import 'package:care_brecelet/view/screens/search_screen.dart';
import 'package:care_brecelet/view/screens/splashScreen.dart';
import 'package:care_brecelet/view/screens/verify_code2.dart';
import 'package:care_brecelet/view/screens/verify_code3.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'view/screens/login_patient_guardian.dart';
import 'model/RegisterScreen.dart';
import 'model/loginScreen.dart';
import 'view/screens/photo2_screen.dart';
import 'view/screens/photo_screen.dart';
import 'view/screens/verify_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Color(0xFFB7AECB),
        useMaterial3: true,
      ),
      routes: {
        RegisterScreen.routeName: (_) => RegisterScreen(),
        doneScreen.routeName: (_) => doneScreen(),
        LoginForDoctor_2.routeName: (_) => LoginForDoctor_2(),
        loginScreen.routeName: (_) => loginScreen(),
        loginScreen2.routeName: (_) => loginScreen2(),
        LoginDoctor.routeName: (_) => LoginDoctor(),
        login_patient_guardian.routeName: (_) => login_patient_guardian(),
        login_patient_guardian_rest.routeName: (_) =>
            login_patient_guardian_rest(),
        LoginGuardian.routeName: (_) => LoginGuardian(),
        QrPage.routeName: (_) => QrPage(),
        SplashScreen.routeName: (_) => SplashScreen(),
        FaceRecognition.routeName: (_) => FaceRecognition(),
        FaceRecognition2.routeName: (_) => FaceRecognition2(),
        VerifYCode.routeName: (_) => VerifYCode(),
        VerifYCode2.routeName: (_) => VerifYCode2(),
        VerifYCode3.routeName: (_) => VerifYCode3(),
        ForgetPass.routeName: (_) => ForgetPass(),
        VertifyScreen.routeName: (_) => VertifyScreen(),
        PasswordResetScreen.routeName: (_) => PasswordResetScreen(),
        NewPassScreen.routeName: (_) => NewPassScreen(),
        MapSample.routeName: (_) => MapSample(),
        GenerateScreen.routeName: (_) => GenerateScreen(),
        SearchScreen.routeName: (_) => SearchScreen(),
        ImagePickerField.routeName: (_) => ImagePickerField(),
        ProfielsScreen.routeName: (_) => ProfielsScreen(),
        PrivacyPolicyFragment.routeName: (_) => PrivacyPolicyFragment(),
        HomeScreen.routeName: (_) => HomeScreen(),
        HomeScreen2.routeName: (_) => HomeScreen2(),
        HomeScreen3.routeName: (_) => HomeScreen3(),
        PatientListView.routeName: (_) => PatientListView(),
        PatientInfo.routeName: (_) => PatientInfo(),
        PatientDetails.routeName: (context) {
          final String patientName =
              ModalRoute.of(context)?.settings.arguments as String;
          return PatientDetails(patientName: patientName);
        },
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
