import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:finance_management/style/style.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;
    final heightRatio = mediaHeight / 932;
    final widthRatio = mediaWidth / 430;

    return Scaffold(
      backgroundColor: mainGreen,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0, bottom: 44),
            child: Text('Security', style: style30),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 37),
              width: double.infinity,
              decoration: BoxDecoration(
                color: background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('Enter security pin', style: style14),
                    SizedBox(height: 20 * heightRatio),

                    
                    OtpInputWidget(onCompleted: (otp) {
                      
                    }),

                    SizedBox(height: 60 * heightRatio),
                    GestureDetector(
                      onTap: () {
                        context.go('/newPassword');
                      },
                      child: Container(
                        height: 50 * heightRatio,
                        width: 120 * widthRatio,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: mainGreen,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text('Accept', style: style14),
                      ),
                    ),
                    SizedBox(height: 60 * heightRatio),
                   GestureDetector(
  onTap: _loading
      ? null
      : () async {
          setState(() => _loading = true);

          await Future.delayed(const Duration(seconds: 2));

          if (context.mounted) {
            context.go('/security');
          }

          setState(() => _loading = false);
        },
  child: Container(
    height: 50 * heightRatio,
    width: 120 * widthRatio,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: _loading ? mainGreen.withAlpha(128) : mainGreen,
      borderRadius: BorderRadius.circular(30),
    ),
    child: _loading
        ? const SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2,
            ),
          )
        : Text('Send Again', style: style14),
  ),
),

                    SizedBox(height: 20 * heightRatio),
                    Text(
                      'or sign up with',
                      style: TextStyle(
                        fontFamily: 'League_Spartan',
                        fontSize: 15 * widthRatio,
                        fontWeight: FontWeight.w600,
                        color: btText,
                      ),
                    ),
                    SizedBox(height: 10 * heightRatio),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Facebook.png',
                          height: 40 * heightRatio,
                          width: 40 * widthRatio,
                        ),
                        SizedBox(width: 20 * widthRatio),
                        Image.asset(
                          'assets/images/Google.png',
                          height: 40 * heightRatio,
                          width: 40 * widthRatio,
                        ),
                      ],
                    ),
                    SizedBox(height: 10 * heightRatio),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account? ',
                          style: TextStyle(
                            fontFamily: 'League_Spartan',
                            fontSize: 15 * widthRatio,
                            fontWeight: FontWeight.w600,
                            color: btText,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.go('/signup');
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              fontFamily: 'League_Spartan',
                              fontSize: 15 * widthRatio,
                              fontWeight: FontWeight.w600,
                              color: blue,
                            ),
                          ),
                        ),
                      ],
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


class OtpInputWidget extends StatefulWidget {
  final void Function(String)? onCompleted;

  const OtpInputWidget({super.key, this.onCompleted});

  @override
  State<OtpInputWidget> createState() => _OtpInputWidgetState();
}

class _OtpInputWidgetState extends State<OtpInputWidget> {
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _textFocusNodes =
      List.generate(6, (_) => FocusNode());
  final List<FocusNode> _focusNodesForKey =
      List.generate(6, (_) => FocusNode());

  @override
  void dispose() {
    for (var c in _controllers) {
      c.dispose();
    }
    for (var f in _textFocusNodes) {
      f.dispose();
    }
    for (var f in _focusNodesForKey) {
      f.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.length == 1 && index < 5) {
      _textFocusNodes[index + 1].requestFocus();
    } else if (value.length == 1 && index == 5) {
      String otp = _controllers.map((c) => c.text).join();
      FocusScope.of(context).unfocus(); // hide keyboard
      if (widget.onCompleted != null) widget.onCompleted!(otp);
    }
  }

  Widget _buildOtpField(int index) {
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Focus(
        focusNode: _focusNodesForKey[index],
        onKeyEvent: (node, event) {
          if (event is KeyDownEvent &&
              event.logicalKey == LogicalKeyboardKey.backspace &&
              _controllers[index].text.isEmpty &&
              index > 0) {
            _textFocusNodes[index - 1].requestFocus();
          }
          return KeyEventResult.ignored;
        },
        child: TextField(
          controller: _controllers[index],
          focusNode: _textFocusNodes[index],
          maxLength: 1,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16),
          decoration: InputDecoration(
            counterText: '',
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.black),
            ),
          ),
          onChanged: (value) => _onChanged(value, index),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      children: List.generate(6, (index) => _buildOtpField(index)),
    );
  }
}
