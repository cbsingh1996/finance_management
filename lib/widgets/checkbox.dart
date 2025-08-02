import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';



class Checkbox1 extends StatefulWidget {
  final String title;
  const Checkbox1({super.key,required this.title});

  @override
  State<Checkbox1> createState() => _Checkbox1State();
}

class _Checkbox1State extends State<Checkbox1> {
 bool check=false;
  @override
  Widget build(BuildContext context) {
    return  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.title, style: style14),
                    Switch(
                      inactiveThumbColor: mainGreen,
                      inactiveTrackColor: lightGreen,

                      activeColor:  lightGreen,
                      activeTrackColor: mainGreen,
                      value: check, onChanged: (bool? value) {
                        setState(() {
                          check= value!;
                        });
                      })
                   
                  ],
                );
  }
}