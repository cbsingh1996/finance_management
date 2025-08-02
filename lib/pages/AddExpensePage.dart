// ignore_for_file: file_names

import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/appbar.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddExpensePage extends StatefulWidget {
  const AddExpensePage({super.key});

  @override
  State<AddExpensePage> createState() => _AddExpensePageState();
}

class _AddExpensePageState extends State<AddExpensePage> {
  List items = [
    {'title': 'Date', 'hint': 'DD/MM/YYYY'},
    {'title': 'Category', 'hint': 'Select the Category'},
    {'title': 'Amount', 'hint': 'Enter the Amount'},
    {'title': 'Expense Title', 'hint': 'Enter the title'},
  ];

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: mainGreen,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60 * heightRatio),
        child: CustomAppBar(title: 'Add Expense'),
      ),
      body: SingleChildScrollView(
        physics: isKeyboardOpen
            ? const AlwaysScrollableScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(
          bottom: isKeyboardOpen ? MediaQuery.of(context).viewInsets.bottom : 0,
        ),
        child: Column(
          children: [
            SizedBox(height: 150 * heightRatio),
            Container(
              width: double.infinity,
              height: mediaHeight - (150 * heightRatio),
              padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
              decoration: deco1,
              child: Column(
                children: [
                  Column(
                    children: List.generate(items.length, (index) {
                      return Column(
                        children: [
                          SizedBox(height: 25 * heightRatio),
                          CustomContainer(
                            heading: items[index]['title'],
                            text: items[index]['hint'],
                            heightRatio: heightRatio,
                            widthRatio: widthRatio,
                          ),
                        ],
                      );
                    }),
                  ),
                  SizedBox(height: 25 * heightRatio),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 25 * heightRatio,
                      ),
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        color: lightGreen,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        maxLength: 200,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        buildCounter:
                            (
                              context, {
                              required currentLength,
                              required isFocused,
                              maxLength,
                            }) => null,
                        maxLines: 4,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Message',
                          hintStyle: stylehint.copyWith(
                            fontSize: stylehint.fontSize! * heightRatio,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 30 * heightRatio,
                          bottom: 20 * heightRatio,
                        ),
                        height: 50 * heightRatio,
                        width: 120 * widthRatio,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: mainGreen,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Text('Save', style: style14),
                      ),
                    ],
                  ),
                  SizedBox(height: 125 * heightRatio),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
