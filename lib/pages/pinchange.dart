import 'package:finance_management/pages/successfullypinchanged.dart';
import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';

class PinChangePage extends StatefulWidget {
  const PinChangePage({super.key});

  @override
  State<PinChangePage> createState() => _PinChangePageState();
}

class _PinChangePageState extends State<PinChangePage> {
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Scaffold(
      backgroundColor: mainGreen,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child:
                      Image.asset('assets/images/back.png', height: 30, width: 30),
                ),
                Expanded(
                  child: Center(
                    child: Text('Pin change', style: heading),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: deco1,
              padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom + 20,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 50 * heightRatio),
                    CustomContainer(
                      heading: 'Current pin',
                      text: 'Enter Your Current Pin',
                      heightRatio: heightRatio,
                      widthRatio: widthRatio,
                    ),
                    SizedBox(height: 25 * heightRatio),
                    CustomContainer(
                      heading: 'Current pin',
                      text: 'Enter Your Current Pin',
                      heightRatio: heightRatio,
                      widthRatio: widthRatio,
                    ),
                    SizedBox(height: 25 * heightRatio),
                    CustomContainer(
                      heading: 'Current pin',
                      text: 'Enter Your Current Pin',
                      heightRatio: heightRatio,
                      widthRatio: widthRatio,
                    ),
                    SizedBox(height: 50 * heightRatio),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PinChangeSuccessPage()),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              top: 15 * heightRatio, bottom: 15 * heightRatio),
                          height: 50 * heightRatio,
                          width: 170 * widthRatio,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: mainGreen,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text('Change Pin', style: style14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
