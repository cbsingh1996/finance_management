// ignore_for_file: file_names

import 'package:finance_management/pages/editprofile.dart';
import 'package:finance_management/pages/help.dart';
import 'package:finance_management/pages/notification.dart';
import 'package:finance_management/pages/securityprofile.dart';
import 'package:finance_management/pages/settingPage.dart';
import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button/buttonnotification.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  List icons = [
    {
      'image': 'assets/images/Icon Profile.png',
      'title': 'Edit Profile',
      'path': EditProfilePage(),
    },
    {
      'image': 'assets/images/Icon Security.png',
      'title': 'Security',
      'path': SecurityProfilePage(),
    },
    {
      'image': 'assets/images/Icon Setting.png',
      'title': 'Setting',
      'path': SettingPage(),
    },
    {
      'image': 'assets/images/Icon help.png',
      'title': 'Help',
      'path':HelpPage(),
    },
    {
      'image': 'assets/images/Icon Logout.png',
      'title': 'Logout',
      'path': null, 
    },
  ];

  int ram = 0;
  bool istrue = false;
  bool ispressed=false;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: mainGreen,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56 * heightRatio),
        child: AppBar(
          backgroundColor: mainGreen,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
            child: SafeArea(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        istrue = false;
                      });
                    },
                    child:istrue? Image.asset('assets/images/back.png'):SizedBox(),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        istrue ? icons[ram]['title'] :ispressed?'Notification': 'Profile',
                        style:  heading.copyWith(fontSize: 20*widthRatio),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {setState(() {
                      ispressed=true;
                    });},
                    child: istrue ? SizedBox(height: 1) : NotificationButton(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: istrue
            ? icons[ram]['path']
            :ispressed?NotificationlPage(): Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(height: 175 * heightRatio),
                  ),
                  Positioned(
                    top: 175 * heightRatio,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
                      decoration: BoxDecoration(
                        color: background,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60 * widthRatio),
                          topRight: Radius.circular(60 * widthRatio),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 150 * heightRatio),
                            ...List.generate(icons.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  if (icons[index]['title'] == 'Logout') {
                                    showDialog(
                                    
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          
                                          child: Container(
                                            alignment: Alignment.center,
                                       decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                             color: background,
                                       ),
                                            width: MediaQuery.of(context).size.width * 0.8,
                                            height: 340,
                                            padding: EdgeInsets.symmetric(horizontal: 16
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'End Session',
                                                  style: heading
                                                ),
                                                SizedBox(height: 20),
                                                Text('Are you sure you want to logout?',style: style12,),
                                                SizedBox(height: 60),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                         context.go('/login');
                                                       
                                                      },
                                                      child: Container(
                                                        height: 50*heightRatio,
                                                        width: 218*widthRatio,
                                                        alignment:Alignment.center,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(30),
                                                          color: mainGreen
                                                        ),
                                                        child:  Text('yes, end session',style: style14,)),
                                                    ),
                                                    SizedBox(height: 15),
                                                    GestureDetector(
                                                      onTap: () {
                                                         Navigator.of(context).pop();
                                                
                                                      },
                                                      child: Container(
                                                          height: 50*heightRatio,
                                                        width: 218*widthRatio,
                                                        alignment:Alignment.center,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(30),
                                                          color: lightGreen
                                                        ),
                                                        child: Text('Cancel',style: style14,)),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  } else {
                                    setState(() {
                                      istrue = true;
                                      ram = index;
                                    });
                                  }
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 30 * heightRatio),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        icons[index]['image'],
                                        height: 53 * heightRatio,
                                        width: 57 * widthRatio,
                                      ),
                                      SizedBox(width: 16 * widthRatio),
                                      Text(
                                        icons[index]['title'],
                                        style: stylew400.copyWith(
                                          fontSize: 18 * widthRatio,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 157 * widthRatio,
                    top: 117 * heightRatio,
                    child: Image.asset(
                      'assets/images/Ellipse 192.png',
                      height: 117 * heightRatio,
                      width: 117 * widthRatio,
                    ),
                  ),
                  Positioned(
                    left: 157 * widthRatio,
                    top: 252 * heightRatio,
                    child: Column(
                      children: [
                        Text('John Smith', style: style24t.copyWith(fontSize:18*widthRatio)),
                        SizedBox(height: 4 * heightRatio),
                        Text('ID: 25030024', style: style12.copyWith(fontSize: 12*widthRatio)),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
