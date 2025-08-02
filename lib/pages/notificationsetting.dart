import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/appbar.dart';
import 'package:finance_management/widgets/checkbox.dart';
import 'package:flutter/material.dart';

class NotificationSettingPage extends StatefulWidget {
  const NotificationSettingPage({super.key});

  @override
  State<NotificationSettingPage> createState() => _NotificationSettingPageState();
}

class _NotificationSettingPageState extends State<NotificationSettingPage> {
  final List<String> items= [
  'General Notification',
  'Sound',
  'Sound Call',
  'Vibrate',
  'Transaction Update',
  'Expense Reminder',
  'Budget Notifications',
  'Low Balance Alerts',
];

  @override
  Widget build(BuildContext context) {
        final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Scaffold(
      backgroundColor: mainGreen,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56 * heightRatio),
        child: CustomAppBar(title: 'Notification Settings'),
      ),
      body: Column(
        children: [
          SizedBox(height: 95*heightRatio,),
          Expanded(child: Container(
            decoration: deco1,
            padding: EdgeInsets.symmetric(horizontal: 37*widthRatio,vertical: 45*heightRatio),
            child: Column(
              children: List.generate(items.length,(index)=> 
              Column(children: [
                Checkbox1(title: items[index]),
                SizedBox(height:10*heightRatio)
              ],)),
            ),
          ))
        ],
      ),
    );
  }
}