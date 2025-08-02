// import 'package:finance_management/pages/onboardingB.dart';
import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingA extends StatefulWidget {
  const OnBoardingA({super.key});

  @override
  State<OnBoardingA> createState() => _OnBoardingAState();
}

class _OnBoardingAState extends State<OnBoardingA> {
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
              children: [
                Text(
                  "Welcome to",
                  style: style30.copyWith(fontSize: 30 * heightRatio),
                ),
                Text(
                  "Expense Manager",
                  style: style30.copyWith(fontSize: 30 * heightRatio),
                ),
              ],
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
               context.go('/onBoardingB');
              },
              child: Container(
                
                alignment: Alignment.center,
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
                    SizedBox(height: heightRatio*40,),
                    Text(
                      'Next',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: heightRatio * 30,
                        fontWeight: FontWeight.w600,
                        color: btText,
                      ),
                    ),
                    SizedBox(
                      width: widthRatio * 42,
                      height: heightRatio * 13,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: widthRatio * 13,
                            height: heightRatio * 13,
                            decoration: BoxDecoration(
                              color: mainGreen,
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: btText),
                            ),
                          ),
                          Container(
                            width: widthRatio * 13,
                            height: heightRatio * 13,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: btText),
                            ),
                          ),
                        ],
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
