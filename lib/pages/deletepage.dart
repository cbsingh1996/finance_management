import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class DeletePage extends StatefulWidget {
  const DeletePage({super.key});

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
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
            Image.asset('assets/images/Check Progress.png', height: 110),
            SizedBox(height: 20,),
            Text('The fingerprint has\nbeen successfully\ndeleted.', style: style13w)
          ],
        ),
      ),
    );
  }
}