
import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button.dart';
import 'package:finance_management/widgets/forgot.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool loginpressed = false;
  bool signuppressed = false;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/green.png',
                height: 150 * heightRatio, // Optional scaling
              ),
              SizedBox(height: 20 * heightRatio),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12.0 * heightRatio),
                child: Text(
                  'FinWise',
                  style: style2.copyWith(
                    fontSize: style2.fontSize! * heightRatio,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.0 * heightRatio),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod.',
                  textAlign: TextAlign.center,
                  style: style13.copyWith(
                    fontSize: 14*widthRatio,color: btText.withAlpha(128)
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    loginpressed = !loginpressed;
                  });
                context.go('/onBoardingA');
                },
                child: Button(
                  text: 'Log in',
                  ispressed: loginpressed,
                
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    signuppressed = !signuppressed;
                  });
                 context.go('/signup');
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0 * heightRatio),
                  child: Button(
                    text: 'Sign Up',
                    ispressed: signuppressed,
                  
                  ),
                ),
              ),
              Forgot(),
              SizedBox(height: 20 * heightRatio),
            ],
          ),
        ),
      ),
    );
  }
}
