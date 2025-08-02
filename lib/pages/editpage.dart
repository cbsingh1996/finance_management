import 'package:finance_management/style/style.dart';
// import 'package:finance_management/widgets/button/buttonnotification.dart';
import 'package:flutter/material.dart';

class Editpage extends StatefulWidget {
  const Editpage({super.key});

  @override
  State<Editpage> createState() => _EditpageState();
}

class _EditpageState extends State<Editpage> {
  List icons = [
    {'image': 'assets/images/Icon Profile.png', 'title': 'Edit Profile'},
    {'image': 'assets/images/Icon Security.png', 'title': 'Security'},
    {'image': 'assets/images/Icon Setting.png', 'title': 'Setting'},
    {'image': 'assets/images/Icon help.png', 'title': 'Help'},
    {'image': 'assets/images/Icon Logout.png', 'title': 'Logout'},
  ];


  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return  SizedBox(
        height: mediaHeight,
        width: double.infinity,
        child: Stack(
          children: [
            
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                height: 576 * heightRatio,
                width: mediaWidth,
                color: mainGreen,
              ),
            ),

            
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                height: 656 * heightRatio,
                width: mediaWidth,
                padding: EdgeInsets.symmetric(
                  horizontal: 30 * widthRatio,
                  vertical: 40 * heightRatio,
                ),
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60 * widthRatio),
                    topRight: Radius.circular(60 * widthRatio),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 125 * heightRatio),
                   
                    
                ],
              ),
            ),
            ),
          ]
        ),
      
    );
  }
}
