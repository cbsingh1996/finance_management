import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button.dart';
import 'package:finance_management/widgets/button/calenderbutton.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';

class TransportPage extends StatefulWidget {
  const TransportPage({super.key});

  @override
  State<TransportPage> createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
  List itemsApril = [
    {'text': 'Fuel', 'time': '18:27-April 30', 'prices': '\$4,00'},
    {'text': 'Car Parts', 'time': '15:00-April 24', 'prices': '\$21,00'},
    {'text': 'New tires', 'time': '12:30-April 15', 'prices': '\$1,400.00'},
  ];
  List itemsMarch = [
    {'text': 'Fuel', 'time': '20:50-March 31', 'prices': '\$27,20'},
    {'text': 'Public Transports', 'time': '9:30-April 08', 'prices': '\$2,00'},
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
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("March", style: style15w500),
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
                          image: 'assets/images/Icon transport.png',
                          text: itemsApril[index]['text'],
                          time: itemsApril[index]['time'],
                          prices: itemsApril[index]['prices'],
                        ),
                        SizedBox(height: heightRatio * 15),
                      ],
                    );
                  }),
                  Text("Feb", style: style15w500),
                  SizedBox(height: heightRatio * 15),
                  ...List.generate(itemsMarch.length, (index) {
                    return Column(
                      children: [
                        CustomList(
                          height: heightRatio,
                          width: widthRatio,
                          image: 'assets/images/Icon transport.png',
                          text: itemsMarch[index]['text'],
                          time: itemsMarch[index]['time'],
                          prices: itemsMarch[index]['prices'],
                        ),
                         SizedBox(height:index==itemsMarch.length-1?0: heightRatio * 15),
                      ],
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
        Container(
          color: background,
          height: 70 * heightRatio,
          width: double.infinity,
          alignment: Alignment.topCenter,
          child: AddExpenses(),
        ),
      ],
    );
  }
}
