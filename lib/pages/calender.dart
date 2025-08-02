import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  @override
  Widget build(BuildContext context) {
     final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Column(
        children: [
          SizedBox(height: 150 * heightRatio),
          
        

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 25*heightRatio,horizontal: 37*widthRatio),
               width: double.infinity,
              decoration: deco1,
              child:Column(
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
                            color: lightGreen,
                          ),
                          child: Text('Categories', style: style14),
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
      
      
    );
  }
}