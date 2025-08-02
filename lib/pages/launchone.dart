// ignore_for_file: use_build_context_synchronously

import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
        context.pushReplacement('/launchB'); 
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainGreen,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Vector.png'),
            Text(
              'FinWise',
              style: style1,
            ),
          ],
        ),
      ),
    );
  }
}
