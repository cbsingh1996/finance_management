import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class Goal extends StatelessWidget {
  final String amount;
  const Goal({super.key,required this.amount});

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Image.asset('assets/images/Group 209.png',fit: BoxFit.contain,height: 10*heightRatio, width: 10*widthRatio,),
          ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
          Text('Goal',style: style12,),
          Text(amount,style: heading.copyWith(fontWeight: FontWeight.bold),)
    
    
        ],),
    
      ],
    );
  }
}
class AmountSaved extends StatelessWidget {
  final String amount;
  const AmountSaved({super.key,required this.amount});

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Image.asset('assets/images/Group 208.png',fit: BoxFit.contain,height: 10*heightRatio, width: 10*widthRatio,),
          ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
          Text('Goal',style: style12,),
          Text(amount,style: heading.copyWith(fontWeight: FontWeight.bold,color: oceanblue),)
    
    
        ],),
    
      ],
    );
  }
}