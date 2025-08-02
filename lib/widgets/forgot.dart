import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Forgot extends StatelessWidget {
  

  const Forgot({super.key, });

  @override
  Widget build(BuildContext context) {
        final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return GestureDetector(
      onTap: () {
       context.go('/forgot');
      },
      child: Container(
        height: 25*heightRatio,
        width: 150*widthRatio,
        alignment: Alignment.center,
        child: Text(
          "Forgot Password?",
          style: TextStyle(
            fontSize: 15 * widthRatio,
            color: btText,
            fontWeight: FontWeight.w600,
            fontFamily: 'Laague_Spartan',
          ),
        ),
      ),
    );
  }
}
