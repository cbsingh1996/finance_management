import 'package:finance_management/pages/deletepage.dart';
import 'package:finance_management/pages/fingerPrintsuccessfully.dart';
import 'package:finance_management/style/style.dart';
// import 'package:finance_management/widgets/widget.dart';
import 'package:flutter/material.dart';

class FingerPrintTemplate extends StatefulWidget {
  final String title;
  final String button;
  const FingerPrintTemplate({super.key, required this.title, required this.button});

  @override
  State<FingerPrintTemplate> createState() => _FingerPrintTemplateState();
}

class _FingerPrintTemplateState extends State<FingerPrintTemplate> {
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
        padding: EdgeInsets.symmetric(horizontal :37*widthRatio),
        height: 150*heightRatio,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          GestureDetector(
             onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset('assets/images/back.png',height: 30,width: 30,)),
          Expanded(child: Center(child: Text(widget.title,style: heading,),))
        ],),
          ),
          Expanded(child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 37*widthRatio,
              vertical: 40*heightRatio),

            decoration: deco1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Fingerprint.png',height: 150*heightRatio,width: 150*widthRatio,fit: BoxFit.contain,),
                SizedBox(height: 25*heightRatio,),
                Container(
                  height: 50*heightRatio,
                  width: 180*widthRatio,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: lightGreen
                  ),
                  child:widget.button=='Delete'?Text(widget.title,style: style14,): TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: style12,
                      border: InputBorder.none
                    ),
                  )
                ),
                Center(
                   child: GestureDetector(
                    onTap: () {
                      if(widget.button=='Delete'){Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=>DeletePage()));}
                  else
                  {
                    Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=>SucessfullyChangedFingerPrint()));}
                  
                      
                    },
                     child: Container(
                            margin: EdgeInsets.only(top: 15*heightRatio,bottom: 15*heightRatio),
                            height: 50*heightRatio,
                            width: 120*widthRatio,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: mainGreen,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Text(widget.button,style: style14,),),
                   ),)
              ],
            ),
          ))

        ],
      ),
    );
  }
}