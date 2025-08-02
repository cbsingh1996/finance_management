import 'package:finance_management/pages/fingerprinttemplate.dart';
import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class AddFingerPrint extends StatefulWidget {
  const AddFingerPrint({super.key});

  @override
  State<AddFingerPrint> createState() => _AddFingerPrintState();
}

class _AddFingerPrintState extends State<AddFingerPrint> {


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
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          GestureDetector(
           onTap: (){Navigator.pop(context);},
            child: Image.asset('assets/images/back.png',height: 30,width: 30,)),
          Expanded(child: Center(child: Text('FingerPrint',style: heading,),))
        ],),
          ),
          Expanded(
            child: Container(
              decoration: deco1,
              padding: EdgeInsets.symmetric(horizontal: 37*widthRatio,
              vertical: 40*heightRatio),
              child: Column(
                children: [
                   GestureDetector(
                   onTap: () {
                    Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=>FingerPrintTemplate(title:'John FingerPrint',button: 'Delete',)));
                 },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                      Image.asset('assets/images/More Funtional.png',height: 50*heightRatio,width: 50*widthRatio,),
                       SizedBox(
                  width:20*widthRatio,
                ),
                      Text('John FingerPrint', style: style12),
                      Expanded(child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios, size: 20 * heightRatio))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40*heightRatio,
                ),
                 GestureDetector(
                   onTap: () {
                      Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=>FingerPrintTemplate(title:'Add A FingerPrint',button: 'Add',)));
                 },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                      Image.asset('assets/images/Fingerprint.png',height: 50*heightRatio,width: 50*widthRatio,),
                       SizedBox(
                  width:20*widthRatio,
                ),
                      Text('Add A FingerPrint', style: style12),
                      Expanded(child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios, size: 20 * heightRatio))),
                    ],
                  ),
                ),
                
                  
                ],
              ),
                  
            ),
          )
        ],
      ),
    );
  }
}