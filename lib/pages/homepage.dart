import 'package:finance_management/pages/notification.dart';
import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button/buttonnotification.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List chart = ['Daily', 'Weekly', 'Monthly'];
  int _currt = 2;
  List num = [0, 1, 2];
  List expance = [
    {
      'image': 'assets/images/Icon Salary.png',
      'type': 'Salary',
      'time': '18:27-April30',
      'Expancetype': 'Monthly',
      'dolar': '\$4.000,00',
    },
    {
      'image': 'assets/images/Groceries.png',
      'type': 'Groceries',
      'time': '17:00-April24',
      'Expancetype': 'Pantry',
      'dolar': '\$100,00',
    },
    {
      'image': 'assets/images/Rent.png',
      'type': 'Rent',
      'time': '8:30-April15',
      'Expancetype': 'Rent',
      'dolar': '\$674,40',
    },
  ];
  bool istrue=false;
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: mainGreen,
      appBar:istrue? PreferredSize(
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
                    child: Image.asset('assets/images/back.png'),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Notification",
                        style: heading,
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        istrue=true;
                      
                      });
                    },
                    child: NotificationButton()),
                ],
              ),
            ),
          ),
        ),
      ) :PreferredSize(
        preferredSize: Size.fromHeight(70 * heightRatio),
        child: AppBar(
          backgroundColor: mainGreen,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Title Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hi, Welcome Back', style: heading.copyWith(fontSize: 20*widthRatio)),
                      Text(
                        'Good Morning',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14 * widthRatio,
                          fontWeight: FontWeight.w500,
                          color: btText.withAlpha(160),
                        ),
                      ),
                    ],
                  ),
                 GestureDetector(
                    onTap: () {
                      setState(() {
                        istrue=true;
                      
                      });
                    },
                    child: NotificationButton()),
                ],
              ),
            ),
          ),
        ),
      ),

      body:istrue?NotificationlPage(): Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 95 * heightRatio),

          Widget2(),

          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: 25 * heightRatio,
                horizontal: 37 * widthRatio,
              ),
            
              decoration: deco1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 145 * heightRatio,
                    decoration: BoxDecoration(
                    color: mainGreen,
                    borderRadius: BorderRadius.circular(24)

                    ),
                  ),
                  SizedBox(height: 25 * heightRatio),
                  Container(
                    decoration: BoxDecoration(
                      color: lightGreen,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                            width: widthRatio * 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: _currt == num[index]
                                  ? mainGreen
                                  : Colors.transparent,
                            ),
                            child: Text(chart[index],style: style14.copyWith(fontSize: 14*widthRatio),),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 25 * heightRatio),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: List.generate(expance.length, (index) {
                          return Column(
                            children: [
                              CustomExpenses(
                                image: expance[index]['image'],
                                image2: 'assets/images/Line11.png',
                                image3: 'assets/images/Line12.png',
                                type: expance[index]['type'],
                                time: expance[index]['time'],
                                typeExpance: expance[index]['Expancetype'],
                                dolar: expance[index]['dolar'],
                                width: widthRatio,
                                height: heightRatio,
                              ),
                              SizedBox(
                                height: index == expance.length - 1
                                    ? 0
                                    : 25 * heightRatio,
                              ),
                            ],
                          );
                        }),
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
