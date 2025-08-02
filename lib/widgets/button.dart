import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Button extends StatefulWidget {
  final bool ispressed;
  final String text;

  const Button({required this.text, required this.ispressed, super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    final BoxDecoration deco1 = BoxDecoration(
      color: mainGreen,
      borderRadius: BorderRadius.circular(30 * widthRatio),
    );

    final BoxDecoration deco2 = BoxDecoration(
      color: lightGreen,
      borderRadius: BorderRadius.circular(30 * widthRatio),
    );

    return Container(
      alignment: Alignment.center,
      height: 54 * heightRatio,
      width: 207 * widthRatio,
      decoration: widget.ispressed ? deco1 : deco2,
      child: Text(
        widget.text,
        style: btStyle.copyWith(fontSize: btStyle.fontSize! * heightRatio),
      ),
    );
  }
}

class AddExpenses extends StatelessWidget {
  const AddExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return GestureDetector(
     onTap: () {
             context.push('/expense');
             
              },
      child: Container(
        alignment: Alignment.center,
        height: 50* heightRatio,
        width: widthRatio * 170,
        decoration: BoxDecoration(
          color: mainGreen,
          borderRadius: BorderRadius.circular(30 * widthRatio),
        ),
        child: Text('Add Expenses',style: style15w5,),
      ),
    );
  }
}
