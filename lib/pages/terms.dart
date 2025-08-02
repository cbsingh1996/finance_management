import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool isCheck=false;
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
            height: 150 * heightRatio,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/back.png',
                    height: 30,
                    width: 30,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text('Terms and Conditions', style: heading),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 20 * heightRatio,
                horizontal: 37 * widthRatio,
              ),
              decoration: deco1,
              child: Column(
                children: [
                  Text('''
Est fugiat assumenda aut reprehenderit

Lorem ipsum dolor sit amet. Et odio officia aut voluptate internos est omnis vitae ut architecto sunt non tenetur fuga ut provident vero. Quo aspernatur facere et consectetur ipsum et facere corrupti est asperiores facere. Est fugiat assumenda aut reprehenderit voluptatem sed.

Ea voluptates omnis aut sequi sequi.
Est dolore quae in aliquid ducimus et autem repellendus.
Aut ipsum Quis qui porro quasi aut minus placeat!
Sit consequatur neque ab vitae facere.

Aut quidem accusantium nam alias autem eum officiis placeat et omnis autem id officiis perspiciatis qui corrupti officia eum aliquam provident. Eum voluptas error et optio dolorum cum molestiae nobis et odit molestiae quo magnam impedit sed fugiat nihil non nihil vitae.

Aut fuga sequi eum voluptatibus provident.
Eos consequuntur voluptas vel amet eaque aut dignissimos velit.

Vel exercitationem quam vel eligendi rerum At harum obcaecati et nostrum beatae? Ea accusantium dolores qui rerum aliquam est perferendis mollitia et ipsum ipsa qui enim autem At corporis sunt. Aut odit quisquam est reprehenderit itaque aut accusantium dolor qui neque repellat.
''', style: style12.copyWith(fontSize: 11*widthRatio)),
                  Row(children: [
                    Checkbox(value: isCheck, onChanged: (bool ?value){
                      setState(() {
                        isCheck=value!;
                      });
                    }),
                    Text('I accept all the terms and conditions',style: style12,)
                  ]),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 15 * heightRatio,
                          bottom: 15 * heightRatio,
                        ),
                        height: 50 * heightRatio,
                        width: 120 * widthRatio,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: mainGreen,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Text('Accept', style: style14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
