import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button.dart';
import 'package:finance_management/widgets/button/calenderbutton.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';
class GiftsPage extends StatefulWidget {
  const GiftsPage({super.key});

  @override
  State<GiftsPage> createState() => _GiftsPageState();
}

class _GiftsPageState extends State<GiftsPage> {
  List itemsApril = [
    {'text': 'Perfume', 'time': '18:27-April 30', 'prices': '-\$30,00'},
    {'text': 'Make-Up', 'time': '15:00-April 24', 'prices': '-\$60,35'},
    
  ];
  List itemsMarch = [
    {'text': 'Teddy Bear', 'time': '12:30-April 15', 'prices': '-\$20,00'},
    {
     
      'text': 'Cookings lessons',
      'time': '20:50-March 31',
      'prices': '-\$128,00',
    },
    {'text': 'Toys For Dani', 'time': '9:30-April 08', 'prices': '-\$50,20'},
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
                      SizedBox(height: heightRatio * 15),
                      
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
