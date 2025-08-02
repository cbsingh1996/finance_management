import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/button.dart';
import 'package:finance_management/widgets/button/calenderbutton.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class GroceriesPage extends StatefulWidget {
  const GroceriesPage({super.key});

  @override
  State<GroceriesPage> createState() => _GroceriesPageState();
}

class _GroceriesPageState extends State<GroceriesPage> {
   List itemsApril = [
    {'text': 'Dinner', 'time': '18:27-April 30', 'prices': '\$26,00'},
    {'text': 'Delivery Pizza', 'time': '15:00-April 24', 'prices': '\$18,35'},
    {'text': 'Lunch', 'time': '12:30-April 15', 'prices': '\$15,40'},
    {'text': 'Brunch', 'time': '9:30-April 08', 'prices': '\$12,13'},
  ];
  List itemsMarch = [
    {
      'image': 'assets/images/Icon Food.png',
      'text': 'Dinner',
      'time': '20:50-March 31',
      'prices': '\$27,20',
    },
  ];


  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return  Column(
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
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60 * widthRatio),
                  topRight: Radius.circular(60 * widthRatio),
                ),
              ),
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
                          image: 'assets/images/Icon Food.png',
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
                          image: 'assets/images/Icon Food.png',
                          text: itemsMarch[index]['text'],
                          time: itemsMarch[index]['time'],
                          prices: itemsMarch[index]['prices'],
                        ),
                        // SizedBox(height: heightRatio * 7),
                      ],
                    );
                  }),
               
                ],
              ),
            ),
          ),
             Container(
              color: background,
                  height: 60*heightRatio,
                  width: double.infinity,
                  alignment: Alignment.topCenter,
                  child: AddExpenses(),
                ),
              // SizedBox(height: heightRatio * 4)
        ],
      );
  }
}
