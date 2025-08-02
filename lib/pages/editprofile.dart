import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/checkbox.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool check1 = false;
  bool check2 = false;

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
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom + 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100 * heightRatio),
                  Text('Account Settings', style: style14),
                  SizedBox(height: 16 * heightRatio),
                  CustomContainer(
                    heading: 'UserName',
                    text: 'Enter Your Name',
                    heightRatio: heightRatio,
                    widthRatio: widthRatio,
                  ),
                  SizedBox(height: 16 * heightRatio),
                  CustomContainer(
                    heading: 'Phone',
                    text: 'Number',
                    heightRatio: heightRatio,
                    widthRatio: widthRatio,
                  ),
                  SizedBox(height: 16 * heightRatio),
                  CustomContainer(
                    heading: 'Email Address',
                    text: 'example@example.com',
                    heightRatio: heightRatio,
                    widthRatio: widthRatio,
                  ),
                  SizedBox(height: 16 * heightRatio),
                  Checkbox1(title: 'Push Notification'),
                  SizedBox(height: 10 * heightRatio),
                  Checkbox1(title: 'Turn Dark theme'),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 15 * heightRatio,
                        bottom: 15 * heightRatio,
                      ),
                      height: 50 * heightRatio,
                      width: 170 * widthRatio,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: mainGreen,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text('Update Profile', style: style14),
                    ),
                  ),
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
          left: 185 * widthRatio,
          top: 155 * heightRatio,
          child: Image.asset(
            'assets/images/Icon-Cam.png',
            height: 117 * heightRatio,
            width: 117 * widthRatio,
          ),
        ),
      ],
    );
  }
}
