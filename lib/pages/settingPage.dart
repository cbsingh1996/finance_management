// ignore_for_file: file_names

import 'package:finance_management/pages/deleteaccount.dart';
import 'package:finance_management/pages/notificationsetting.dart';
import 'package:finance_management/pages/passwordsetting.dart';
import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
 @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Stack(
      children: [
        Positioned(left: 0, top: 0, child: SizedBox(height: 175 * heightRatio)),

        Positioned(
          top: 175 * heightRatio,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
            decoration: deco1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50 * heightRatio),
                Text('Security', style: style14),
                SizedBox(height: 40 * heightRatio),
               
                GestureDetector(
                   onTap: () {
                    Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=>NotificationSettingPage()));
                 },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/Group 364.png'),
                          SizedBox(width: 30*widthRatio,),
                          Text('Notification Settings', style: style14),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, size: 20 * heightRatio),
                    ],
                  ),
                ),
                  Divider(
                thickness: .5,
                height: 50, 
                ),
               GestureDetector(
                   onTap: () {
                    Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=>PasswordSettingsPage()));
                 },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/Group 365.png'),
                          SizedBox(width: 30*widthRatio,),
                          Text('Password Settings', style: style14),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, size: 20 * heightRatio),
                    ],
                  ),
                ),
                Divider(
                thickness: .5,
                height: 50, 
                ),
               GestureDetector(
                   onTap: () {
                    Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=>DeleteAccountPage()));
                 },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/images/Group 421.png'),
                          SizedBox(width: 30*widthRatio,),
                          Text('Delete Account', style: style14),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, size: 20 * heightRatio),
                    ],
                  ),
                ),
               
                Divider( thickness: .5,
                height: 50,
                 )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
