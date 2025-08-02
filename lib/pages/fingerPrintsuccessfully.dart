import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class SucessfullyChangedFingerPrint extends StatefulWidget {
  const SucessfullyChangedFingerPrint({super.key});

  @override
  State<SucessfullyChangedFingerPrint> createState() => _SucessfullyChangedFingerPrintState();
}

class _SucessfullyChangedFingerPrintState extends State<SucessfullyChangedFingerPrint> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
         Navigator.pop(context);
         Navigator.pop(context);

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
            Image.asset('assets/images/Check Progress.png', height: 100),
            const SizedBox(height: 20),
            Text('Pin has been', style: style13w),
            Text('fingerprint Has been Changed successfully', style: style13w),
          ],
        ),
      ),
    );
  }
}
