import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonCalender extends StatelessWidget {
  const ButtonCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:   GestureDetector(
                        onTap: () {
                          context.push('/calender');
                        },
                        child: Image.asset('assets/images/Calender.png')),
    );
  }
}