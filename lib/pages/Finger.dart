// ignore_for_file: file_names

import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FingerPrintPage extends StatefulWidget {
  const FingerPrintPage({super.key});

  @override
  State<FingerPrintPage> createState() => _FingerPrintPageState();
}

class _FingerPrintPageState extends State<FingerPrintPage> {
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Scaffold(
      backgroundColor: mainGreen,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:100.0,bottom: 44),
            child: Text('Security Fingerprint',style: style30,),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 70,
              horizontal: 37),
               
                width: double.infinity,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(50),topRight: Radius.circular(50))
                ),
                child:Column(
                  children: [
                    SizedBox(
                      height: 195*heightRatio,
                      width: 195*widthRatio,
                      child: Image.asset('assets/images/Component 28.png')),
                                      SizedBox(height: 40 * heightRatio),

                    Text('Use fingerprint  to access',style: style14,),
                                      SizedBox(height: 25 * heightRatio),

                    Text('dataLorem ipsum dolor sit amet, consectetur adipiscing',style: style13,),
                    Text('elit, sed do eiusmod tempor incididunt.',style: style13,),
                  SizedBox(height: 50 * heightRatio),

                    Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        context.go('/login');
                      },
                      child: Container(
                        height: 50 * heightRatio,
                        width: 200 * widthRatio,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: lightGreen,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text('Use touch id', style: style14),
                      ),
                    ),
                  ),
                                    SizedBox(height: 20* heightRatio),


Text('¿Or prefer use pin code?',style: style13,)
                  ],
                )),
          )
        ]
      )
    );
  }
}
