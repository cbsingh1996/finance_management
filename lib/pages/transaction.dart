import 'package:finance_management/pages/calender.dart';
import 'package:finance_management/pages/expense.dart';
import 'package:finance_management/pages/income.dart';
import 'package:finance_management/pages/notification.dart';
import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button/buttonnotification.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class Transactionpage extends StatefulWidget {
  const Transactionpage({super.key});

  @override
  State<Transactionpage> createState() => _TransactionpageState();
}

class _TransactionpageState extends State<Transactionpage> {
  bool isincome = false;
  bool isexpense = false;

  bool istrue = false;
  int index = 0;
  List pages = [
    {'title': 'Transaction', 'path': IncomeWidget()},
    {'title': 'Transaction', 'path': ExpenseWidget()},
    {'title': 'Calender', 'path': CalenderPage()},
    {'title': 'Notification', 'path': NotificationlPage()},
  ];
  List transaction = [
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
      'dolar': '-\$100,00',
    },
    {
      'image': 'assets/images/Rent.png',
      'type': 'Rent',
      'time': '8:30-April15',
      'Expancetype': 'Rent',
      'dolar': '-\$674,40',
    },
    {
      'image': 'assets/images/Icon transport.png',
      'type': 'Transport',
      'time': '8:30-April15',
      'Expancetype': 'Fuel',
      'dolar': '-\$4,13',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: mainGreen,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56 * heightRatio),
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
                    child:istrue? Image.asset('assets/images/back.png'):SizedBox(),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        istrue ? pages[index]['title'] : 'Transaction',
                        style: heading.copyWith(fontSize: 20*widthRatio),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        istrue = true;
                        index = 3;
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
          ? pages[index]['path']
          : Column(
              children: [
                SizedBox(height: 110 * heightRatio),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      margin: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color:  background,
                      ),
                      child: Column(
                        children: [
                          Text('Total Balance', style: style15w500.copyWith(fontSize: 20*widthRatio),),
                          Text('\$7,783.00', style: style24t.copyWith(fontSize: 20*widthRatio)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20 * heightRatio),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.symmetric(
                        horizontal: 37 * widthRatio,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isincome = true;
                                  isexpense = false;
                                });
                              },

                              child: Container(
                                height: 93 * heightRatio,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                        color: isincome ? oceanblue : background,
                                ),
                                child: CustomIncome(
                                  istrue: isincome,
                                  amount: '\$4,120.00',
                                  width: widthRatio,
                                  height: heightRatio,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 15 * widthRatio),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isexpense = true;
                                  isincome = false;
                                });
                              },
                              child: Container(
                                height: 93 * heightRatio,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                        color: isexpense ? oceanblue : background,
                                ),
                                child: CustomExpense(
                                  istrue: isexpense,
                                  amount: '\$1.187.40',
                                  width: widthRatio,
                                  height: heightRatio,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
                    decoration:deco1,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 25 * heightRatio),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('April', style: style14.copyWith(fontSize: 14*widthRatio)),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    istrue = true;
                                    index = 2;
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
                          SizedBox(height: 25 * heightRatio),
                          Column(
                            children: List.generate(transaction.length, (index) {
                              return Column(
                                children: [
                                  CustomExpenses(
                                    image: transaction[index]['image'],
                                    image2: 'assets/images/Line11.png',
                                    image3: 'assets/images/Line12.png',
                                    type: transaction[index]['type'],
                                    time: transaction[index]['time'],
                                    typeExpance:
                                        transaction[index]['Expancetype'],
                                    dolar: transaction[index]['dolar'],
                                    width: widthRatio,
                                    height: heightRatio,
                                  ),
                                  SizedBox(
                                    height: 25 * heightRatio,
                                  ),
                                ],
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
