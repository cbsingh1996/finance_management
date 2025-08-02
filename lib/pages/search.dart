// ignore_for_file: file_names

import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/widget.dart';
// import 'package:finance_management/widgets/button/buttonnotification.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isPressed = false;
  bool ispressed = false;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Column(
      children: [
        SizedBox(height: 90 * heightRatio),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 37 * widthRatio,
            vertical: 30 * heightRatio,
          ),
          child: Image.asset(
            'assets/images/Frame 62.png',
            height: 44 * heightRatio,
            fit: BoxFit.contain,
            width: double.infinity,
          ),
        ),

        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 37 * widthRatio,
              vertical: 30 * heightRatio,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60 * widthRatio),
                topRight: Radius.circular(60 * widthRatio),
              ),
            ),
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainer(
                  heading: 'Categories',
                  text: 'Select the Category',
                  heightRatio: heightRatio,
                  widthRatio: widthRatio,
                ),
                SizedBox(height: 30 * heightRatio),
                CustomContainer(
                  heading: 'Date',
                  text: 'DD/MM/YYYY',
                  heightRatio: heightRatio,
                  widthRatio: widthRatio,
                ),
                SizedBox(height: 30 * heightRatio),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Text('Report',style: style14,),
                ),
                SizedBox(height: 15 * heightRatio),
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Row(
                    children: [
                     GestureDetector(
                      onTap: () {
                         setState(() {
                          isPressed=true;
                          ispressed=false;
                        });
                        
                      },
                      child:  Column(
                        children: [
                          CustomCheckBox(
                        ispressed: isPressed,
                        height: heightRatio,
                        width: widthRatio,
                      ),
                       SizedBox(width: 20 * widthRatio),
                      Text('Income', style: style12),
                        ],
                      )
                     ),
                     SizedBox(width: 50 * widthRatio),
                     GestureDetector(
                      onTap: () {
                        setState(() {
                          isPressed=false;
                          ispressed=true;
                        });
                      },
                      child:  Column(
                        children: [
                          CustomCheckBox(
                        ispressed: ispressed,
                        height: heightRatio,
                        width: widthRatio,
                      ),
                       SizedBox(width: 20 * widthRatio),
                      Text('Expense', style: style12),
                        ],
                      )
                     ),
                    ],
                  ),
                ),
                SizedBox(height: 50 * heightRatio),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50*heightRatio,
                      width: 120*widthRatio,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: mainGreen,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Text('Search',style: style14,),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
