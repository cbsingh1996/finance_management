// ignore_for_file: file_names

import 'package:finance_management/pages/search.dart';
import 'package:finance_management/pages/calender.dart';
import 'package:finance_management/pages/notification.dart';
import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button/buttonnotification.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({super.key});

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  List chart = ['Daily', 'Weekly', 'Monthly', 'year'];
  int _currt = 0;
  List num = [0, 1, 2, 3];
  List expense = ['\$1.187.40', '\$20,000.20', '\$35,510.20', '\$320,300.00'];
  List income = ['\$4,120.00', '\$11,420.00', '\$47,200.00', '\$430,560.00'];
  List images = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4 (1).png',
  ];
  bool istrue = false;

  int pageiindex = 0;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    List pages = [
      {'title': 'Search', 'path': SearchPage()},
      {'title': 'Calender', 'path': CalenderPage()},
      {'title': 'Notification', 'path': NotificationlPage()},
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: mainGreen,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60 * heightRatio),
        child: AppBar(
          backgroundColor: mainGreen,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
            child: SafeArea(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        istrue = false;
                      });
                    },
                    child: istrue
                        ? Image.asset('assets/images/back.png')
                        : SizedBox(),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        istrue ? pages[pageiindex]['title'] : "Analysis",
                        style: heading.copyWith(fontSize: 20 * widthRatio),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        istrue = true;
                        pageiindex = 2;
                      });
                    },
                    child: NotificationButton(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: istrue
          ? pages[pageiindex]['path']
          : Column(
              children: [
                SizedBox(height: 90 * heightRatio),

                Widget2(),

                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: deco1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 25 * heightRatio),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 37 * widthRatio,
                          ),
                          decoration: BoxDecoration(
                            color: lightGreen,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          width: double.infinity,
                          height: 60 * heightRatio,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(chart.length, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _currt = index;
                                  });
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50 * heightRatio,
                                  width: widthRatio * 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(19),
                                    color: _currt == num[index]
                                        ? mainGreen
                                        : Colors.transparent,
                                  ),
                                  child: Text(
                                    chart[index],
                                    style: style14.copyWith(
                                      fontSize: 14 * widthRatio,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        SizedBox(height: 15 * heightRatio),

                        Container(
                          height: 280 * heightRatio,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 25 * widthRatio,
                            vertical: 18 * heightRatio,
                          ),
                          margin: EdgeInsets.symmetric(
                            horizontal: 37 * widthRatio,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: lightGreen,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Income & Expense',
                                    style: style14.copyWith(
                                      fontSize: 14 * widthRatio,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            istrue = true;
                                            pageiindex = 0;
                                          });
                                        },
                                        child: SizedBox(
                                          height: 30 * heightRatio,
                                          width: 32.26 * widthRatio,
                                          child: Image.asset(
                                            'assets/images/Search.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 4 * widthRatio),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            istrue = true;
                                            pageiindex = 1;
                                          });
                                        },
                                        child: SizedBox(
                                          height: 30 * heightRatio,
                                          width: 32.26 * widthRatio,
                                          child: Image.asset(
                                            'assets/images/Calender.png',
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 14 * heightRatio),
                              SizedBox(
                                child: Image.asset(
                                  images[_currt],
                                  height: 200 * heightRatio,
                                  width: 290 * widthRatio,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 35 * heightRatio),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: CustomIncome(
                                istrue: istrue,
                                amount: income[_currt],
                                width: widthRatio,
                                height: heightRatio,
                              ),
                            ),
                            Expanded(
                              child: CustomExpense(
                                istrue: istrue,
                                amount: expense[_currt],
                                width: widthRatio,
                                height: heightRatio,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
