// ignore_for_file: file_names

import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingB extends StatefulWidget {
  const OnBoardingB({super.key});

  @override
  State<OnBoardingB> createState() => _OnBoardingBState();
}

class _OnBoardingBState extends State<OnBoardingB> {
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Scaffold(
      backgroundColor: mainGreen,
      body: Column(
        children: [
          SizedBox(
            height: heightRatio * 300,
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("¿Are you ready to", style: style30.copyWith(fontSize: 30*heightRatio)),
                Text("take control of",style: style30.copyWith(fontSize: 30*heightRatio)),
                Text("your finaces?",style: style30.copyWith(fontSize: 30*heightRatio)),
              ],
            ),
          ),

          Expanded(
            child: GestureDetector(
              onTap: () {
               context.go('/login');
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50 * widthRatio),
                    topRight: Radius.circular(60 * widthRatio),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: heightRatio * 287,
                      width: widthRatio * 287,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            left: widthRatio * 20,
                            child: Image.asset(
                              'assets/images/Ellipse.png',
                              height: heightRatio * 248,
                              width: widthRatio * 248,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            child: SizedBox(
                              height: heightRatio * 287,
                              width: widthRatio * 287,
                              child: Image.asset(
                                'assets/images/dolar.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: heightRatio * 40),
                    Text(
                      'Next',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24*widthRatio,
                        fontWeight: FontWeight.w600,
                        color: btText,
                      ),
                    ),
                    Positioned(
                      top: 499,
                      left: 194,
                      child: SizedBox(
                        width: 42,
                        height: 13,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 13,
                              width: 13,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(width: 1, color: btText),
                              ),
                            ),
                            Container(
                              width: 13,
                              height: 13,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: mainGreen,
                                border: Border.all(width: 1, color: btText),
                              ),
                            ),
                          ],
                        ),
                      ),
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
