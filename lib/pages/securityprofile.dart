import 'package:finance_management/pages/addfingerprint.dart';
import 'package:finance_management/pages/pinchange.dart';
import 'package:finance_management/pages/terms.dart';
import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class SecurityProfilePage extends StatefulWidget {
  const SecurityProfilePage({super.key});

  @override
  State<SecurityProfilePage> createState() => _SecurityProfilePageState();
}

class _SecurityProfilePageState extends State<SecurityProfilePage> {
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;
    return Stack(
      children: [
        Positioned(left: 0, top: 0, child: SizedBox(height: 175 * heightRatio)),

        Positioned(
          top: 175 * heightRatio,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
            decoration: deco1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50 * heightRatio),
                Text('Security', style: style14),
                SizedBox(height: 40 * heightRatio),
               
                GestureDetector(
                   onTap: () {
                    Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=>PinChangePage()));
                 },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                      Text('Changed Pin', style: style12),
                      Icon(Icons.arrow_forward_ios, size: 20 * heightRatio),
                    ],
                  ),
                ),
                  Divider(
                thickness: .5,
                height: 50, 
                ),
                GestureDetector(
                 onTap: () {
                    Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=>AddFingerPrint()));
                 },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                      Text('FingerPrint', style: style12),
                      Icon(Icons.arrow_forward_ios, size: 20 * heightRatio),
                    ],
                  ),
                ),
               
                Divider(
                thickness: .5,
                height: 50, 
                ),
                GestureDetector(
                  onTap: (){
                     Navigator.push(context, 
                  MaterialPageRoute(builder:(context)=>TermsAndCondition()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                    children: [
                      Text('Terms and Conditions', style: style12),
                      Icon(Icons.arrow_forward_ios, size: 20 * heightRatio),
                    ],
                  ),
                ),
               
                Divider( thickness: .5,
                height: 50,
                 )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
