// ignore_for_file: file_names

// import 'package:finance_management/pages/AddExpensePage.dart';
import 'package:finance_management/pages/Rent.dart';
import 'package:finance_management/pages/entertainment.dart';
import 'package:finance_management/pages/food.dart';
import 'package:finance_management/pages/gifts.dart';
import 'package:finance_management/pages/groceries.dart';
import 'package:finance_management/pages/medicine.dart';
import 'package:finance_management/pages/notification.dart';
import 'package:finance_management/pages/savings.dart';
import 'package:finance_management/pages/transport.dart';
import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button/buttonnotification.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List images = [
    'assets/images/Food Funtional.png',
    'assets/images/Transport Funtional.png',
    'assets/images/Medicine Funtional.png',
    'assets/images/Groceries Funtional.png',
    'assets/images/Rent Funtional.png',
    'assets/images/Gift Funtional.png',
    'assets/images/Saving Funtional.png',
    'assets/images/Entertainment Funtional.png',
    'assets/images/More Funtional.png',
  ];
  List pages = [
    {'text': 'Food', 'path': FoodPage()},
    {'text': 'Transport', 'path': TransportPage()},
    {'text': 'Medicine', 'path': MedicinePage()},
    {'text': 'Groceries', 'path': GroceriesPage()},
    {'text': 'Rent', 'path': RentPage()},
    {'text': 'Gifts', 'path': GiftsPage()},
    {'text': 'Savings', 'path': SavingsPage()},
    {'text': 'Entertainment', 'path': EntertainmentPage()},
    {'text': 'more', 'path': null},

    {'text': 'Notification', 'path': NotificationlPage()},
  ];

  bool istrue = false;
  int ram = 0;

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
                    child:istrue? Image.asset('assets/images/back.png'):SizedBox(),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        istrue ? pages[ram]['text'] : 'Categories',
                        style: heading.copyWith(fontSize: 20*widthRatio),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        istrue = true;
                        ram = pages.length - 1;
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
          ? pages[ram]['path']
          : Column(
              children: [
                SizedBox(height: 100 * heightRatio),

                Widget2(),

                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
                    decoration: BoxDecoration(
                      color: background,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60 * widthRatio),
                        topRight: Radius.circular(60 * widthRatio),
                      ),
                    ),
                    child: GridView.builder(
                      padding: EdgeInsets.only(top: 30 * heightRatio),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          
                            crossAxisSpacing: 15,
                            childAspectRatio: .7,
                          ),

                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return CustomCategoris(
                          image: images[index],
                          text: pages[index]['text'],
                          height: heightRatio,
                          width: widthRatio,
                          ontap: () {
                               if (pages[index]['text'] == 'more') {

                                  showDialog(
                                    // barrierColor: background,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Dialog(
                                        
                                        child: Container(
                                          alignment: Alignment.center,
                                     decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                           color: background,
                                     ),
                                          width: mediaWidth * 0.8,
                                          height: 340,
                                          padding: EdgeInsets.symmetric(horizontal: 30
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                'New Category',
                                                style: heading
                                              ),
                                            CustomContainer(heading: '', text: 'Writing..', heightRatio: heightRatio, widthRatio: widthRatio),
                                              
                                              SizedBox(height: 20*heightRatio),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                     Navigator.of(context).pop();
                                                     
                                                    },
                                                    child: Container(
                                                      height: 50*heightRatio,
                                                      width: 218*widthRatio,
                                                      alignment:Alignment.center,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(30),
                                                        color: mainGreen
                                                      ),
                                                      child:  Text('Save',style: style14,)),
                                                  ),
                                                  SizedBox(height: 15),
                                                  GestureDetector(
                                                    onTap: () {
                                                       Navigator.of(context).pop();
                                              
                                                    },
                                                    child: Container(
                                                        height: 50*heightRatio,
                                                      width: 218*widthRatio,
                                                      alignment:Alignment.center,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(30),
                                                        color: lightGreen
                                                      ),
                                                      child: Text('Cancel',style: style14,)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                } else {
                                  setState(() {
                                    istrue = true;
                                    ram = index;
                                  });
                                }
                              }, 
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
