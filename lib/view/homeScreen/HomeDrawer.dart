import 'package:flutter/material.dart';

typedef OnMenuItemClick= void Function(MenuItem clickedItemPos);

class HomeDrawer extends StatelessWidget {

  OnMenuItemClick onMenuItemClick;
  static const String routeName='HomeDrawer';

  HomeDrawer(this.onMenuItemClick,{super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFFDAD1F4),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
         Container(
           color: Color(0xFF9167DC),
           padding: EdgeInsets.symmetric(
             vertical: 60,
           ),
         ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                onMenuItemClick(MenuItem.patient);
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.home_filled),
                  SizedBox(width: 5,),
                  Text('Home', style: TextStyle(fontSize: 23,),)
                ],
              ),
            ),

            SizedBox(height: 30,),

            InkWell(
              onTap: (){
                onMenuItemClick(MenuItem.complaints);
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Image.asset('asset/images/comolaints.png',width: 25,),
                  SizedBox(width: 5,),
                  Text('complaints', style: TextStyle(fontSize: 23,),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                onMenuItemClick(MenuItem.F_Q);
            },
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Image.asset('asset/images/fq.png',width: 25,),
                  SizedBox(width: 5,),
                  Text('F&Q', style: TextStyle(fontSize: 23,),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                onMenuItemClick(MenuItem.deleteAccount);
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Image.asset("asset/images/deleteAccount.png",width: 25,),
                  SizedBox(width: 5,),
                  Text('delete account', style: TextStyle(fontSize: 23,),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                onMenuItemClick(MenuItem.privacy);
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Image.asset("asset/images/PrivacyPolicy.png",width: 25,),
                  SizedBox(width: 5,),
                  Text('Privacy Policy', style: TextStyle(fontSize: 23,),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                onMenuItemClick(MenuItem.signOut);
              },
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10,),
                  Image.asset("asset/images/sign out.png",width: 25,),
                  SizedBox(width: 5,),
                  Text('sign out', style: TextStyle(fontSize: 23,),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum MenuItem{
  patient,
  complaints,
  F_Q,
  deleteAccount,
  privacy,
  signOut,
}

