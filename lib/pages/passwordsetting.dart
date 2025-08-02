import 'package:finance_management/pages/pschange.dart';
import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/appbar.dart';
import 'package:flutter/material.dart';

class PasswordSettingsPage extends StatefulWidget {
  const PasswordSettingsPage({super.key});

  @override
  State<PasswordSettingsPage> createState() => _PasswordSettingsPageState();
}

class _PasswordSettingsPageState extends State<PasswordSettingsPage> {
  final List<String> items = [
    'Current Password',
    'New Password',
    'Confirm New Password',
  ];

  final List<bool> _obscureList = [true, true, true];

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
        child: CustomAppBar(title: 'Password Settings'),
      ),
      body: Column(
        children: [
          SizedBox(height: 95 * heightRatio),
          Expanded(
            child: Container(
              decoration: deco1,
              padding: EdgeInsets.symmetric(
                horizontal: 37 * widthRatio,
                vertical: 45 * heightRatio,
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom + 20,
                ),
                child: Column(
                  children: [
                    ...List.generate(
                      items.length,
                      (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            items[index],
                            style: style14.copyWith(fontSize: 15 * widthRatio),
                          ),
                          SizedBox(height: 5*heightRatio,),
                          Container(
                            height: 50 * heightRatio,
                            padding: EdgeInsets.symmetric(
                              horizontal: 20 * widthRatio,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                20 * widthRatio,
                              ),
                              color: lightGreen,
                            ),
                            child: TextField(
                              obscureText: _obscureList[index],
                              style: TextStyle(fontSize: 14),
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                hintText: '●●●●●●●●',
                                hintStyle: style12,
                                labelStyle: style12,
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.zero,
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureList[index] =
                                          !_obscureList[index];
                                    });
                                  },
                                  child: Icon(
                                    _obscureList[index]
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20 * heightRatio),
                        ],
                      ),
                    ),
                    SizedBox(height: 40 * heightRatio),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PSChangepage(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 45 * heightRatio,
                        width: 218 * widthRatio,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24 * widthRatio),
                          color: mainGreen,
                        ),
                        child: Text('Change Password', style: style14),
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
