import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Container(
      height: 34 * heightRatio,
      width: 34 * widthRatio,
      decoration: BoxDecoration(shape: BoxShape.circle, color: background),
      child: Image.asset('assets/images/Vector (5).png'),
    );
  }
}
