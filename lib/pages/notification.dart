import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/custom.dart';
import 'package:flutter/material.dart';

class NotificationlPage extends StatefulWidget {
  const NotificationlPage({super.key});

  @override
  State<NotificationlPage> createState() => _NotificationlPageState();
}

class _NotificationlPageState extends State<NotificationlPage> {
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: mainGreen,

      body: Column(
      
        children: [
          SizedBox(height: 114 * heightRatio),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30 * widthRatio,vertical: 20*heightRatio
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60 * widthRatio),
                  topRight: Radius.circular(60 * widthRatio),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Today', style: style14.apply(color: btText.withAlpha(128))),
                  SizedBox(height: 12 * heightRatio),

                  CustomReminder(),
                  SizedBox(height: 20 * heightRatio),
                  CustomUpdate(),
                  SizedBox(height: 20 * heightRatio),

                  Text('Yesterday',style: style14.apply(color: btText.withAlpha(128))),
                  SizedBox(height: 12 * heightRatio),

                  CustomTransaction(),
                  SizedBox(height: 20 * heightRatio),
                  CustomReminder(),
                  SizedBox(height: 20 * heightRatio),

                  Text('this Weekend',style: style14.apply(color: btText.withAlpha(128))),
                  SizedBox(height: 12 * heightRatio),

                  CustomTransaction(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
