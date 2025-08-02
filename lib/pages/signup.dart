import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List items = [
    {'title': 'Full name', 'hint': 'example@example.com'},

    {'title': 'Email', 'hint': 'example@example.com'},
    {'title': 'Mobile Number', 'hint': 'example@example.com'},
    {'title': 'Date Of Birth', 'hint': 'example@example.com'},
    {'title': 'Password', 'hint': 'example@example.com'},
    {'title': 'Confirm Password', 'hint': 'example@example.com'},
  ];
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
            height: mediaHeight * 0.13,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Create Account', style: style30.copyWith(fontSize: 28*widthRatio)),
                SizedBox(height: heightRatio*30,)
              ],
            ),
          ),
          Expanded(
          
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 37),
                    height: .87*mediaHeight,


                width: double.infinity,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20*heightRatio),
                    IntrinsicHeight(
                      child: Column(
                        children: List.generate(items.length, (index) {
                          return Column(
                            children: [
                              CustomContainer(
                                heading: items[index]['title'],
                                text: items[index]['hint'],
                                heightRatio: heightRatio,
                                widthRatio: widthRatio,
                              ),
                              SizedBox(height: index==items.length-1?0:12),
                            ],
                          );
                        }),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'By continuing, you agree to',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14 * heightRatio,
                        fontWeight: FontWeight.w400,
                        color: btText,
                      ),
                    ),
                    Text(
                      'Terms of Use and Privacy Policy.',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14 * heightRatio,
                        fontWeight: FontWeight.w400,
                        color: btText,
                      ),
                    ),
                    SizedBox(height: 10),
                    Button(
                      text: 'Create',
                      ispressed: true,
                    
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?  ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14 * heightRatio,
                            fontWeight: FontWeight.w400,
                            color: btText,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.go('/login');
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14 * heightRatio,
                              fontWeight: FontWeight.w400,
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
