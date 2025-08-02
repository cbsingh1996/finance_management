
import 'package:finance_management/style/style.dart';

import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SavingsPage extends StatefulWidget {
  const SavingsPage({super.key});

  @override
  State<SavingsPage> createState() => _SavingsPageState();
}

class _SavingsPageState extends State<SavingsPage> {
  List images = [
    'assets/images/Travel Funtional.png',
    'assets/images/New Home Funtional.png',
    'assets/images/Car Funtional.png',
    'assets/images/Wedding Funtional.png',
   
  ];
  List pages = [
    {'text': 'Travel', 'path': '/travel'},
    {'text': 'New House', 'path': '/newhome'},
    {'text': 'Car', 'path':'/car'},
    {'text': 'Wedding', 'path': '/wedding'},
   
  ];

  bool istrue = false;
  int ram = 0;

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
            child: GridView.builder(
                      padding: EdgeInsets.only(top: 30 * heightRatio),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 15,
                            childAspectRatio: .8,
                          ),

                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return CustomCategoris(
                          image: images[index],
                          text: pages[index]['text'],
                          height: heightRatio,
                          width: widthRatio,
                          ontap: () {
                            
                       context.push(pages[index]['path']);
                      },
                    );
                  },
                ),
          )
        )
              ],
            
    );
  }
}
