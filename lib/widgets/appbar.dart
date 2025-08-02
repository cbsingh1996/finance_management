import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final widthRatio = mediaWidth / 430;

    return AppBar(
      backgroundColor: mainGreen,
      automaticallyImplyLeading: false,
      flexibleSpace: Padding(
        padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
        child: SafeArea(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
              
              context.pop();
                },
                child: Icon(Icons.arrow_back, size: 30, color: background),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    widget.title,
                    style: heading,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customIndicator({
  required double height,
  required double goal,
  required double amount,
}) {
  final percentage = (amount / goal * 100).clamp(0, 100);
  final formattedPercentage = percentage.toStringAsFixed(2);

  return Container(
    alignment: Alignment.centerRight,
    height: 35 * height,
    width: double.infinity,
    decoration: BoxDecoration(
      color: const Color(0xFF052224),
      borderRadius: BorderRadius.circular(13.5),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('$formattedPercentage %', style: style13w),
        ),
        Container(
          alignment: Alignment.centerRight,
          width: 330 - 330 * amount / goal,
          decoration: BoxDecoration(
            color: mainGreen,
            borderRadius: BorderRadius.circular(13.5),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text('\$$goal', style: style12),
          ),
        ),
      ],
    ),
  );
}
