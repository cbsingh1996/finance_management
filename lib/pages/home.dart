import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:finance_management/pages/analysis.dart';
import 'package:finance_management/pages/Categories.dart';
import 'package:finance_management/pages/Profile.dart';
import 'package:finance_management/pages/homepage.dart';
import 'package:finance_management/pages/transaction.dart';
import 'package:finance_management/style/style.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<String> _iconPaths = [
    'assets/images/Home.png',
    'assets/images/Analysis.png',
    'assets/images/Vector4.png',
    'assets/images/Vector3.png',
    'assets/images/Profile.png',
  ];

  final List<Widget> pages = [
    HomePage(),
    AnalysisPage(),
    Transactionpage(),
    CategoriesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return WillPopScope(
      onWillPop: () async {
        final shouldExit = await showDialog<bool>(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Exit App'),
                content: const Text('Do you want to close the app?'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(false),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => SystemNavigator.pop(), 
                    child: const Text('OK'),
                  ),
                ],
              ),
            ) ??
            false;

        return shouldExit;
      },
      child: Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: Container(
          color: background,
          child: Container(
            height: 100 * heightRatio,
            padding: EdgeInsets.symmetric(
              vertical: 10 * heightRatio,
              horizontal: 15 * widthRatio,
            ),
            decoration: BoxDecoration(
              color: lightGreen,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(90 * widthRatio),
                topRight: Radius.circular(90 * widthRatio),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(_iconPaths.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  child: Container(
                    height: 65 * heightRatio,
                    width: 60 * widthRatio,
                    decoration: BoxDecoration(
                      color: _currentIndex == index
                          ? mainGreen
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      height: 31 * heightRatio,
                      width: 25 * widthRatio,
                      child: Image.asset(
                        _iconPaths[index],
                        color: btText,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}