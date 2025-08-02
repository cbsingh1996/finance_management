// import 'package:finance_management/pages/securityprofile.dart';
import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart'; // Needed for context.pushReplacement()

class PinChangeSuccessPage extends StatefulWidget {
  const PinChangeSuccessPage({super.key});

  @override
  State<PinChangeSuccessPage> createState() => _PinChangeSuccessPageState();
}

class _PinChangeSuccessPageState extends State<PinChangeSuccessPage> {
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
            Text('Changed Successfully', style: style13w),
          ],
        ),
      ),
    );
  }
}
