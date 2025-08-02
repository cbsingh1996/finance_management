import 'package:finance_management/style/style.dart';
import 'package:finance_management/widgets/appbar.dart';
import 'package:flutter/material.dart';

class DeleteAccountPage extends StatefulWidget {
  const DeleteAccountPage({super.key});

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPageState();
}

class _DeleteAccountPageState extends State<DeleteAccountPage> {
  bool  _obscureList = true;

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
        child: CustomAppBar(title: 'Delete Account'),
      ),
      body: Column(
        children: [
          SizedBox(height: 95 * heightRatio),
          Expanded(
            child: Container(
              decoration: deco1,
              padding: EdgeInsets.symmetric(
                horizontal: 37 * widthRatio,
                vertical: 30 * heightRatio,
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    
                    children: [
                      Text(
                        'Are you sure you want to delete',
                        style: style12.copyWith(fontSize: 18 * widthRatio),
                      ),
                      Text(
                        'your account?',
                        style: style12.copyWith(fontSize: 18 * widthRatio),
                      ),
                      SizedBox(height: 20 * heightRatio),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 28 * widthRatio,
                          vertical: 20 * heightRatio,
                        ),
                        height: 257 * heightRatio,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: lightGreen,
                          borderRadius: BorderRadius.circular(16 * widthRatio),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '''This action will permanently delete all of
                  your data, and you will not be able to
                  recover it. Please keep the following in
                  mind before proceeding:''',
                              style: style13.copyWith(fontSize: 13 * widthRatio),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 6 * heightRatio),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6),
                              child: Text(
                                ''' ● All your expenses, income and associated transactions will be eliminated.''',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: style13.copyWith(
                                  fontSize: 13 * widthRatio,
                                ),
                              ),
                            ),
                            SizedBox(height: 6 * heightRatio),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6),
                              child: Text(
                                ''' ● You will not be able to access your account or any related information.''',
                  
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: style13.copyWith(
                                  fontSize: 13 * widthRatio,
                                ),
                              ),
                            ),
                             SizedBox(height: 6 * heightRatio),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6),
                              child: Text(
                                ''' ● This action cannot be undone.''',
                  
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: style13.copyWith(
                                  fontSize: 13 * widthRatio,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20 * heightRatio),
                      Text(
                        'Please enter your password to confirm',
                        style: style12.copyWith(fontSize: 18 * widthRatio),
                      ),
                      Text(
                        'deletion of your account',
                        style: style12.copyWith(fontSize: 18 * widthRatio),
                      ),
                    
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
                              obscureText: _obscureList,
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
                                      _obscureList =
                                          !_obscureList;
                                    });
                                  },
                                  child: Icon(
                                    _obscureList
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      SizedBox(height: 20 * heightRatio),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  16 * widthRatio,
                                ),
                              ),
                              child: IntrinsicHeight(
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.8,
                                  padding: EdgeInsets.all(20 * widthRatio),
                                  decoration: BoxDecoration(
                                    color: background,
                                    borderRadius: BorderRadius.circular(
                                      16 * widthRatio,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Delete Account',
                                        style: style14,
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 10 * heightRatio),
                                      Text(
                                        '''By deleting your account, you agree that you understand the consequences of this action and that you agree to permanently delete your account and all associated data.''',
                                        style: style13,
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 20 * heightRatio),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 45 * heightRatio,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              24 * widthRatio,
                                            ),
                                            color: mainGreen,
                                          ),
                                          child: Text(
                                            'Delete Account',
                                            style: style14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 12 * heightRatio),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 45 * heightRatio,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              24 * widthRatio,
                                            ),
                                            color: mainGreen,
                                          ),
                                          child: Text('Cancel', style: style14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
                          child: Text('Delete Account', style: style14),
                        ),
                      ),
                      SizedBox(height: 20 * heightRatio),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 45 * heightRatio,
                          width: 218 * widthRatio,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24 * widthRatio),
                            color: mainGreen,
                          ),
                          child: Text('Cancel', style: style14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
