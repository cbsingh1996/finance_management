// ignore_for_file: use_build_context_synchronously

import 'package:finance_management/style/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  bool _obscureNewPassword = true;
  bool _obscureConfirmPassword = true;

  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

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
            height: 150 * heightRatio,
            width: double.infinity,
            alignment: Alignment.center,
            child: Text('New Password', style: heading),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 37 * widthRatio),
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60 * widthRatio),
                  topRight: Radius.circular(60 * widthRatio),
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  top: 120 * heightRatio,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 40,
                ),
                child: Column(
                  children: [
              
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text('Newpassword', style: style14.copyWith(fontSize: 14*widthRatio)),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12 * heightRatio, horizontal: 20 * widthRatio),
                          decoration: BoxDecoration(
                            color: lightGreen,
                            borderRadius: BorderRadius.circular(24*widthRatio),
                          ),
                          child: TextField(
                            controller: _newPasswordController,
                            obscureText: _obscureNewPassword,
                            decoration: InputDecoration(
                              hintText: '●●●●●●●●',
                              border: InputBorder.none,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureNewPassword = !_obscureNewPassword;
                                  });
                                },
                                child: Icon(
                                  _obscureNewPassword ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40 * heightRatio),

                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text('Confirm Newpassword', style: style14.copyWith(fontSize: 14*widthRatio)),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12 * heightRatio, horizontal: 20 * widthRatio),
                          decoration: BoxDecoration(
                            color: lightGreen,
                            borderRadius: BorderRadius.circular(24*widthRatio),
                          ),
                          child: TextField(
                            controller: _confirmPasswordController,
                            obscureText: _obscureConfirmPassword,
                            decoration: InputDecoration(
                              hintText: '●●●●●●●●',
                              border: InputBorder.none,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureConfirmPassword = !_obscureConfirmPassword;
                                  });
                                },
                                child: Icon(
                                  _obscureConfirmPassword ? Icons.visibility_off : Icons.visibility,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 100 * heightRatio),

                    /// Submit Button
                    GestureDetector(
                      onTap: () {
                        Future.delayed(Duration(seconds: 2), () {
                          if (!mounted) return;
                          context.go('/changed');
                        });
                      },
                      child: Container(
                        height: 50 * heightRatio,
                        width: 200 * widthRatio,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: mainGreen,
                          borderRadius: BorderRadius.circular(30),
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
