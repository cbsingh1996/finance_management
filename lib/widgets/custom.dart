import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class CustomReminder extends StatelessWidget {
  const CustomReminder({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 30 * widthRatio),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  alignment: Alignment.center,
                  height: 37 * heightRatio,
                  width: 37 * widthRatio,
                  decoration: BoxDecoration(
                    color: mainGreen,
                    borderRadius: BorderRadius.circular(12 * widthRatio),
                  ),
                  child: Image.asset('assets/images/Vector (5).png'),
                ),
                SizedBox(width: 15 * widthRatio),
                SizedBox(
                  width: 220 * widthRatio,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Reminder!',
                        style: style15w5.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 14 * widthRatio,
                        ),
                      ),
                      Text(
                        'Set up your automatic savings to meet your savings goal...',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: style3.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      '17:00 - April 24',
                      style: style14ocean.copyWith(fontSize: 12 * widthRatio),
                    ),
                  ),
                ),
                SizedBox(height: 15 * heightRatio),
              ],
            ),
          ),
          Divider(thickness: 2, color: mainGreen, height: 8),
        ],
      ),
    );
  }
}

class CustomUpdate extends StatelessWidget {
  const CustomUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 30 * widthRatio),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          SizedBox(
            height: 80,
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 37 * heightRatio,
                  width: 37 * widthRatio,

                  child: Image.asset('assets/images/Group 438.png'),
                ),
                SizedBox(width: 15 * widthRatio),
                Container(
                  padding: EdgeInsets.all(0),
                  width: 220 * widthRatio,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'New Update',
                        style: style15w5.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 14 * widthRatio,
                        ),
                      ),
                      Text(
                        'Set up your automatic savings to meet your savings goal...',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: style3.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      '17:00 - April 24',
                      style: style14ocean.copyWith(fontSize: 12 * widthRatio),
                    ),
                  ),
                ),
                SizedBox(height: 15 * heightRatio),
              ],
            ),
          ),
          Divider(thickness: 2, color: mainGreen, height: 8),
        ],
      ),
    );
  }
}

class CustomTransaction extends StatelessWidget {
  const CustomTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
        
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 37 * heightRatio,
                    width: 37 * widthRatio,
        
                    child: Image.asset('assets/images/Group 435.png'),
                  ),
                  SizedBox(width: 15 * widthRatio),
                  SizedBox(
                    width: 220 * widthRatio,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Transaction',
                          style: style15w5.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14 * widthRatio,
                          ),
                        ),
                        Text(
                          'A new transaction has been registered',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: style3.copyWith(fontWeight: FontWeight.w600),
                        ),
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Groceries',
                                style: style12.copyWith(
                                  color: oceanblue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              VerticalDivider(
                                width: 10,
                                thickness: 2,
                                color: oceanblue,
                              ),
                              Text(
                                'Pantry',
                                style: style12.copyWith(
                                  color: oceanblue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              VerticalDivider(
                                width: 10,
                                thickness: 2,
                                color: oceanblue,
                              ),
                              Text(
                                '-\$100,00',
                                style: style12.copyWith(
                                  color: oceanblue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '17:00 - April 24',
                        style: style14ocean.copyWith(fontSize: 12 * widthRatio),
                      ),
                    ),
                  ),
                  SizedBox(height: 15 * heightRatio),
                ],
              ),
            ),
            Divider(thickness: 2, color: mainGreen, height: 8),
          ],
        ),
      ),
    );
  }
}
