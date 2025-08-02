import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/appbar.dart';
import 'package:finance_management/widgets/button/calenderbutton.dart';
import 'package:finance_management/widgets/goal.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TravelPge extends StatefulWidget {
  const TravelPge({super.key});

  @override
  State<TravelPge> createState() => _TravelPgeState();
}

class _TravelPgeState extends State<TravelPge> {
 final List<Map<String, dynamic>> travelDeposits = [
    {
      
      'subtitle': '19:56-April 30',
      'amount': '\$217.77',
      'image': 'assets/images/Travel.png',
    },
    {
      
      'subtitle': '14:20-May 15',
      'amount': '\$300.00',
      'image': 'assets/images/Travel (1).png',
    },
    {
    
      'subtitle': '09:10-June 10',
      'amount': '\$120.00',
      'image': 'assets/images/Travel.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Scaffold(
      backgroundColor: mainGreen,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56 * heightRatio),
        child: CustomAppBar(title: 'Travel'),
      ),
      body: Column(
        children: [
          SizedBox(height: 60* heightRatio),
          Expanded(
            child: Container(
              decoration: deco1,
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 37 * widthRatio,
              ),
              child: Column(
                children: [
                  Container(
                    
                    margin: EdgeInsets.only(bottom: 20 * heightRatio),
                    height: 167,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Goal(amount: '\$569,200'),
                            AmountSaved(amount: '\$1625.48'),
                          ],
                        ),
                        Image.asset(
                          'assets/images/Group 433.png',
                          fit: BoxFit.contain,
                          height: 167 * heightRatio,
                          width: 169 * widthRatio,
                        ),
                      ],
                    ),
                  ),
                  customIndicator(
                    height: heightRatio,
                    goal: 569200,
                    amount: 162548,
                  ),
                  SizedBox(height: 20 * heightRatio),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("April", style: style15w500),
                      ButtonCalender(),
                    ],
                  ),
                  SizedBox(height: heightRatio * 15),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: travelDeposits.length,
                    itemBuilder: (context, index) {
                      final item = travelDeposits[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              item['image'],
                              height: 53 * heightRatio,
                              width: 57 * widthRatio,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 20 * widthRatio),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Travel Deposit', style: style16),
                                  Text(item['subtitle'], style: style14ocean),
                                ],
                              ),
                            ),
                            Text(item['amount'], style: homeheading),
                          ],
                        ),
                      );
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      context.pop();
                    },
                    child: Container(
                      width: 170 * widthRatio,
                      height: 45,
                      decoration: BoxDecoration(
                        color: mainGreen,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Add Savings',
                        style: style14
                      ),
                    ),
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
