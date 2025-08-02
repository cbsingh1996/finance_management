// ignore_for_file: non_constant_identifier_names

import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String heading;
  final String text;
  final double heightRatio;
  final double widthRatio;

  const CustomContainer({
    required this.heading,
    required this.text,
    required this.heightRatio,
    required this.widthRatio,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            heading,
            style: styletitle.copyWith(
              fontSize: styletitle.fontSize! * heightRatio + 1,
            ),
          ),
        ),
        SizedBox(height: 4 * heightRatio),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20 * widthRatio),
          height: 54 * heightRatio,
          width: double.infinity,
          decoration: BoxDecoration(
            color: lightGreen,
            borderRadius: BorderRadius.circular(24 * widthRatio),
          ),
          child: TextField(
            style: stylehint.copyWith(
              fontSize: stylehint.fontSize! * heightRatio,
            ),
            decoration: InputDecoration(
              isCollapsed: true,
              contentPadding: EdgeInsets.symmetric(vertical: 12 * heightRatio),
              border: InputBorder.none,
              hintText: text,
              hintStyle: stylehint.copyWith(
                fontSize: stylehint.fontSize! * heightRatio,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

customBox({
  required String image,
  required String text,
  required String dolar,
  required TextStyle s1,
  required TextStyle s2,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(image, height: 10, width: 10),
          Text(text, style: s1, overflow: TextOverflow.ellipsis),
        ],
      ),
      Text(dolar, style: s2, overflow: TextOverflow.ellipsis),
    ],
  );
}

CustomLevel({required double width, required dynamic height}) {
  return Container(
    alignment: Alignment.centerRight,
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: Color(0xFF052224),
      borderRadius: BorderRadius.circular(13.5),
    ),
    child: Row(
      children: [
        Container(
          width: width * .3,
          alignment: Alignment.center,
          child: Text('30%', style: style13w),
        ),

        Container(
          alignment: Alignment.centerRight,
          width: width * .7,
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(13.5),
          ),
          child: Text('\$20,000.00    ', style: style13),
        ),
      ],
    ),
  );
}

CustomExpenses({
  required String image,
  required String image2,
  required String image3,
  required String type,
  required String time,
  required String typeExpance,
  required String dolar,
  required double width,
  required double height,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        height: 53 * height,
        width: 57 * width,
        child: Image.asset(image),
      ),

      Container(
        alignment: Alignment.center,
        width: 120 * width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              type,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15*width,
                fontWeight: FontWeight.w500,
                color: Color(0xFF052224),
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13*width,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0068FF),
              ),
            ),
          ],
        ),
      ),

      Image.asset(image2),

      Container(
        alignment: Alignment.center,
        width: 90 * width,
        child: Text(
          typeExpance,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 13*width,
            fontWeight: FontWeight.w300,
            color: Color(0xFF052224),
          ),
        ),
      ),

      Image.asset(image3),

      Expanded(
        child: Container(
          alignment: Alignment.center,
          child: Text(
            dolar,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15*width,
              fontWeight: FontWeight.w500,
              color: Color(0xFF052224),
            ),
          ),
        ),
      ),
    ],
  );
}

CustomIncome({
  required String amount,
  required double width,
  required double height,
  required bool istrue,
}) {
  return Container(
    height: 93 * height,

    padding: EdgeInsets.only(top: 12 * height, bottom: 6 * height),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/Income (1).png',
          height: 20 * height,
          width: 20 * width,
          color: istrue ? background : mainGreen,
        ),
        Text(
          'Income',
          style: istrue
              ? style15w500bt.copyWith(fontSize: 13 * width)
              : style15w500.copyWith(fontSize: 13 * width),
        ),
        Text(
          amount,
          style: istrue
              ? style20ocean.copyWith(fontSize: 16 * width, color: background)
              : style20ocean.copyWith(fontSize: 16 * width, color: btText),
        ),
      ],
    ),
  );
}

CustomExpense({
  required String amount,
  required double width,
  required double height,
  required bool istrue,
}) {
  return Container(
    height: 93 * height,
    decoration: BoxDecoration(color: istrue ? oceanblue : Colors.transparent),

    padding: EdgeInsets.only(top: 12 * height, bottom: 6 * height),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/Expenses.png',
          height: 20 * height,
          width: 20 * width,
          color: istrue ? background : oceanblue,
        ),
        Text(
          'Expense',
          style: istrue
              ? style15w500bt.copyWith(fontSize: 13 * width)
              : style15w500.copyWith(fontSize: 13 * width),
        ),
        Text(
          amount,
          style: istrue
              ? style20ocean.copyWith(fontSize: 16 * width, color: background)
              : style20ocean.copyWith(fontSize: 16 * width),
        ),
      ],
    ),
  );
}

CustomCategoris({
  required String image,
  required String text,
  required double height,
  required dynamic ontap,
  required double width,
}) {
  return GestureDetector(
    onTap: ontap,
    child: Column(
      children: [
        SizedBox( width: 106, child: Image.asset(image,fit: BoxFit.contain,)),
        SizedBox(height: 5*height,),
        Text(text, style: style12.copyWith(fontSize: 12*width)),
      ],
    ),
  );
}

CustomList({
  required double height,
  required double width,
  required String image,
  required String text,
  required String time,
  required String prices,
}) {
  return SizedBox(
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Row(
            children: [
              Image.asset(image, height: 53 * height, width: 57 * width),
              SizedBox(width: width * 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(text, style: style15w500),
                  Text(time, style: style14ocean),
                ],
              ),
            ],
          ),
        ),
        Text(prices, style: style14ocean.copyWith(fontSize: 15 * height)),
      ],
    ),
  );
}

class Widget2 extends StatelessWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50 * widthRatio,
        vertical: 20 * heightRatio,
      ),
      height: 185 * heightRatio,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10 * widthRatio),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customBox(
                  image: 'assets/images/Income.png',
                  text: ' Total Balance',
                  dolar: "\$7.783.00",
                  s2: style24.copyWith(fontSize: 20 * widthRatio),
                  s1: style13.copyWith(fontSize: 10 * widthRatio),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.05 * mediaWidth),
                  child: Image.asset(
                    'assets/images/Line2.png',
                    width: 2 * widthRatio,
                    height: 45 * heightRatio,
                    fit: BoxFit.cover,
                  ),
                ),
                customBox(
                  image: 'assets/images/Expense.png',
                  text: ' Total Expense',
                  dolar: "-\$1.187.40",
                  s2: style24b.copyWith(fontSize: 20 * widthRatio),
                  s1: style13.copyWith(fontSize: 10 * widthRatio),
                ),
              ],
            ),
          ),
          SizedBox(height: 16 * heightRatio),
          CustomLevel(width: 330 * widthRatio, height: 27 * heightRatio),
          SizedBox(height: 16 * heightRatio),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10 * widthRatio),
            child: Row(
              children: [
                SizedBox(
                  height: 13 * heightRatio,
                  width: 13 * widthRatio,
                  child: Image.asset('assets/images/check.png'),
                ),
                Text(
                  '  30% of your expenses, looks good.',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14 * widthRatio,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF052224),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

CustomCheckBox({
  required bool ispressed,
  required double height,
  required double width,
}) {
  return Container(
    height: 20 * height,
    width: 20 * width,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: background,
      shape: BoxShape.circle,
      border: BoxBorder.all(width: 1, color: mainGreen),
    ),

    child: Container(
      height: 12 * height,
      width: 12 * width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: BoxBorder.all(width: 1, color: mainGreen),
        color: ispressed ? mainGreen : Colors.transparent,
      ),
    ),
  );
}
