import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class PSChangepage extends StatefulWidget {
  const PSChangepage({super.key});

  @override
  State<PSChangepage> createState() => _PSChangepageState();
}

class _PSChangepageState extends State<PSChangepage> {
 
  @override
  void initState() {
  
    super.initState();
    Future.delayed(Duration(seconds:3 ),(){
      Navigator.pop(context);
      Navigator.pop(context);
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