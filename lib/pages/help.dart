import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  List items = [
    'How to use FinWise?',
    'How much does it cost to use FinWise?',
    'How to contact support?',
    'How can I reset my password if I forget it?',
    'Are there any privacy or data security measures in place?',
    'Can I customize settings within the application?',
    'How can I delete my account?',
    'How do I access my expense history?',
    'Can I use the app offline?',
  ];

  int selectedTab = 0; 

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
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
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom + 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20 * heightRatio),
                    Text(
                      'How Can We Help You?',
                      textAlign: TextAlign.center,
                      style: style14.copyWith(fontSize: 14 * widthRatio),
                    ),
                    SizedBox(height: 20 * heightRatio),
      
                    /// FAQ / Contact Us Tab
                    Container(
                      height: 45 * heightRatio,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8 * widthRatio,
                        vertical: 3 * heightRatio,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * widthRatio),
                        color: lightGreen,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedTab = 0;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 39 * heightRatio,
                                decoration: BoxDecoration(
                                  color: selectedTab == 0 ? mainGreen : Colors.transparent,
                                  borderRadius: BorderRadius.circular(20 * widthRatio),
                                ),
                                child: Text(
                                  'FAQ',
                                  style: stylehint.copyWith(fontSize: 15 * widthRatio),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedTab = 1;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 39 * heightRatio,
                                decoration: BoxDecoration(
                                  color: selectedTab == 1 ? mainGreen : Colors.transparent,
                                  borderRadius: BorderRadius.circular(20 * widthRatio),
                                ),
                                child: Text(
                                  'Contact Us',
                                  style: stylehint.copyWith(fontSize: 15 * widthRatio),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
      
                    SizedBox(height: 10 * heightRatio),
      
                    /// Category Row
                    Container(
                      height: 35 * heightRatio,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 8 * widthRatio,
                        vertical: 3 * heightRatio,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * widthRatio),
                        color: lightGreen,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              'General',
                              textAlign: TextAlign.center,
                              style: stylehint.copyWith(fontSize: 15 * widthRatio),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Account',
                              textAlign: TextAlign.center,
                              style: stylehint.copyWith(fontSize: 15 * widthRatio),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Services',
                              textAlign: TextAlign.center,
                              style: stylehint.copyWith(fontSize: 15 * widthRatio),
                            ),
                          ),
                        ],
                      ),
                    ),
      
                    SizedBox(height: 10 * heightRatio),
      
                    /// Search Bar
                    Container(
                      alignment: Alignment.center,
                      height: 35 * heightRatio,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20 * widthRatio,
                        vertical: 3 * heightRatio,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * widthRatio),
                        color: lightGreen,
                      ),
                      child: TextField(
                        style: TextStyle(fontSize: 14),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintText: 'Search..',
                          hintStyle: style12,
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    ),
      
                    SizedBox(height: 10 * heightRatio),
      
                    /// FAQs (visible regardless of tab selection)
                    ...List.generate(
                      items.length,
                      (index) => Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  items[index],
                                  style: style12,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              SizedBox(width: 20 * widthRatio),
                              Icon(Icons.keyboard_arrow_down, size: 24),
                            ],
                          ),
                          SizedBox(height: 15 * heightRatio),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        
      ],
      ),
    );
  }
}
