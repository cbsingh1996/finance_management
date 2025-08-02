import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';

class ProfilecalenderPage extends StatefulWidget {
  const ProfilecalenderPage({super.key});

  @override
  State<ProfilecalenderPage> createState() => _ProfilecalenderPageState();
}

class _ProfilecalenderPageState extends State<ProfilecalenderPage> {
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
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: background, size: 30),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Calender', style: heading),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 150 * heightRatio),
          Expanded(
            child: Container(
              
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 37 * widthRatio,
                vertical: 20 * heightRatio,
              ),
              decoration: deco1,
              child: Column(
                children: [
                  SizedBox(
                    width: 310,
                    height: 247 * heightRatio,
                    child: Image.asset(
                      'assets/images/Calendary.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 25* heightRatio),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 41*heightRatio,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20 * widthRatio,
                            ),
                            color: mainGreen,
                          ),
                          child: Text('Spends', style: style14),
                        ),
                      ),
                      SizedBox(width: 20 * widthRatio),
                      Expanded(
                        child: Container(
                                height: 41*heightRatio,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20 * widthRatio,
                            ),
                            color: mainGreen,
                          ),
                          child: Text('Spends', style: style14),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40 * heightRatio),
                  CustomList(
                    height: heightRatio,
                    width: widthRatio,
                    image: 'assets/images/Groceries.png',
                    text: 'Groceries',
                    time: '17:00-April24',
                    prices: '-\$100,00',
                  ),
                  SizedBox(height: 15 * heightRatio),
                  CustomList(
                    height: heightRatio,
                    width: widthRatio,
                    image: 'assets/images/Groceries.png',
                    text: 'Groceries',
                    time: '17:00-April24',
                    prices: '-\$100,00',
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
