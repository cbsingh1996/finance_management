// ignore_for_file: use_build_context_synchronously

import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SuccesfullyPage extends StatefulWidget {
  const SuccesfullyPage({super.key});

  @override
  State<SuccesfullyPage> createState() => _SuccesfullyPageState();
}

class _SuccesfullyPageState extends State<SuccesfullyPage> {

  @override
  void initState() {
  
    super.initState();
    Future.delayed(Duration(seconds:3 ),(){
      context.go('/login');
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainGreen,
      body: 
        Column(
           mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset('assets/images/Check Progress.png')),
            SizedBox(height: 10,),
            Container(
                            alignment: Alignment.center,
              child: Text('Password Has been\nChanged successfully',style: style13w,))
          ],
        ),
      
    );
  }
}