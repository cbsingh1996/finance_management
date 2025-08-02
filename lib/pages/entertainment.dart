import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button.dart';
import 'package:finance_management/widgets/button/calenderbutton.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';


class EntertainmentPage extends StatefulWidget {
  const EntertainmentPage({super.key});

  @override
  State<EntertainmentPage> createState() => _EntertainmentPageState();
}

class _EntertainmentPageState extends State<EntertainmentPage> {
  List itemsApril = [
    {'text': 'Cinema', 'time': '18:27-April 30', 'prices': '-\$26,00'},
    {'text': 'Netflix', 'time': '15:00-April 24', 'prices': '-\$18,35'},
    {'text': 'Karaoke', 'time': '12:30-April 15', 'prices': '-\$15,40'},
  ];
  List itemsMarch = [
    {
      'image': 'assets/images/Icon Food.png',
      'text': 'Video Game',
      'time': '20:50-March 31',
      'prices': '-\$27,20',
    },
    {'text': 'Netflix', 'time': '9:30-April 08', 'prices': '-\$12,13'},
  ];

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Column(
      children: [
        SizedBox(height: 95 * heightRatio),

        Widget2(),

        Expanded(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 37 * widthRatio,
              vertical: 25 * heightRatio,
            ),
            decoration: deco1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("April", style: style15w500),
                    ButtonCalender()
                  ],
                ),
                SizedBox(height: heightRatio * 15),

                ...List.generate(itemsApril.length, (index) {
                  return Column(
                    children: [
                      CustomList(
                        height: heightRatio,
                        width: widthRatio,
                        image: 'assets/images/Icon Entertainment.png',
                        text: itemsApril[index]['text'],
                        time: itemsApril[index]['time'],
                        prices: itemsApril[index]['prices'],
                      ),
                      SizedBox(height: heightRatio * 15),
                    ],
                  );
                }),
                Text("March", style: style15w500),
                SizedBox(height: heightRatio * 15),
                ...List.generate(itemsMarch.length, (index) {
                  return Column(
                    children: [
                      CustomList(
                        height: heightRatio,
                        width: widthRatio,
                        image: 'assets/images/Icon Entertainment.png',
                        text: itemsMarch[index]['text'],
                        time: itemsMarch[index]['time'],
                        prices: itemsMarch[index]['prices'],
                      ),
                      
                    ],
                  );
                }),
              ],
            ),
          ),
        ),
        Container(
          color: background,
          height: 70* heightRatio,
          width: double.infinity,
          alignment: Alignment.topCenter,
          child: AddExpenses(),
        ),
        // SizedBox(height: heightRatio * 4)
      ],
    );
  }
}
