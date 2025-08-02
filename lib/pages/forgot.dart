import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  bool signuppressed = false;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Scaffold(
      backgroundColor: mainGreen,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0, bottom: 34),
            child: Text('Forgot Password', style: style24t),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 37),
              width: double.infinity,
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom + 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40 * heightRatio),
                    Text("Reset Password?", style: style14),
                    SizedBox(height: 6 * heightRatio),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do\neiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                      style: style13,
                    ),
                    SizedBox(height: 50 * heightRatio),
                    CustomContainer(
                      heading: 'Enter Email Address',
                      text: 'example@example.com',
                      heightRatio: heightRatio,
                      widthRatio: widthRatio,
                    ),
                    SizedBox(height: 50 * heightRatio),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          context.go('/security');
                        },
                        child: Container(
                          height: 50 * heightRatio,
                          width: 120 * widthRatio,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: mainGreen,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text('Next Step', style: style14),
                        ),
                      ),
                    ),
                    SizedBox(height: 60 * heightRatio),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            signuppressed = !signuppressed;
                          });
                          context.go('/signup');
                        },
                        child: Button(text: 'Sign Up', ispressed: signuppressed),
                      ),
                    ),
                    SizedBox(height: 25 * heightRatio),
                    Center(
                      child: Text(
                        'or sign up with',
                        style: TextStyle(
                          fontFamily: 'League_Spartan',
                          fontSize: 15 * widthRatio,
                          fontWeight: FontWeight.w600,
                          color: btText,
                        ),
                      ),
                    ),
                    SizedBox(height: 10 * heightRatio),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Facebook.png',
                          height: 40 * heightRatio,
                          width: 40 * widthRatio,
                        ),
                        SizedBox(width: 20 * widthRatio),
                        Image.asset(
                          'assets/images/Google.png',
                          height: 40 * heightRatio,
                          width: 40 * widthRatio,
                        ),
                      ],
                    ),
                    SizedBox(height: 10 * heightRatio),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account? ',
                          style: TextStyle(
                            fontFamily: 'League_Spartan',
                            fontSize: 15 * widthRatio,
                            fontWeight: FontWeight.w600,
                            color: btText,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.go('/signup');
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontFamily: 'League_Spartan',
                              fontSize: 15 * widthRatio,
                              fontWeight: FontWeight.w600,
                              color: blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
