// ignore_for_file: file_names

import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button.dart';
import 'package:finance_management/widgets/forgot.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool loginpressed = false;
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
          Container(
            height: mediaHeight * 0.2,
            alignment: Alignment.center,
            child: Text(
              'Welcome',
              style: style30.copyWith(
                fontSize: style30.fontSize! * heightRatio,
              ),
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50 * widthRatio),
                  topRight: Radius.circular(50 * widthRatio),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: 37 * widthRatio,
                  vertical: 20 * heightRatio,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomContainer(
                      heading: 'Username or email',
                      text: 'example@example.com',
                      heightRatio: heightRatio,
                      widthRatio: widthRatio,
                    ),
                    SizedBox(height: 20 * heightRatio),
                    CustomContainer(
                      heading: 'Password',
                      text: '●●●●●●●●',
                      heightRatio: heightRatio,
                      widthRatio: widthRatio,
                    ),
                    SizedBox(height: 50 * heightRatio),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          loginpressed = !loginpressed;
                        });
                        // Use context.go to clear previous stack and go to home
                        context.push('/home');
                      },
                      child: Button(
                        text: 'Login',
                        ispressed: loginpressed,
                      ),
                    ),
                    SizedBox(height: 14 * heightRatio),
                    Forgot(),
                    SizedBox(height: 14 * heightRatio),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          signuppressed = !signuppressed;
                        });
                        context.go('/signup');
                      },
                      child: Button(
                        text: 'Sign Up',
                        ispressed: signuppressed,
                      ),
                    ),
                    SizedBox(height: 25 * heightRatio),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Use ',
                          style:
                              style14.copyWith(fontSize: style14.fontSize! * heightRatio),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.go('/finger');
                          },
                          child: Text(
                            "Fingerprint",
                            style: style14ocean.copyWith(
                                fontSize: style14ocean.fontSize! * heightRatio),
                          ),
                        ),
                        Text(
                          ' to Access',
                          style:
                              style14.copyWith(fontSize: style14.fontSize! * heightRatio),
                        ),
                      ],
                    ),
                    SizedBox(height: 15 * heightRatio),
                    Text(
                      'or sign up with',
                      style: TextStyle(
                        fontFamily: 'League_Spartan',
                        fontSize: 15 * widthRatio,
                        fontWeight: FontWeight.w600,
                        color: btText,
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
