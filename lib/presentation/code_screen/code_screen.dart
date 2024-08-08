import 'dart:async';

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/presentation/number_screen/number_screen.dart';
import 'package:pawan_s_application2/presentation/profile_details_screen/profile_details_screen.dart';
import 'package:pawan_s_application2/widgets/app_bar/appBarMainpage.dart';
import 'package:pawan_s_application2/widgets/custom_pin_code_text_field.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  String otp = '';
  int timerSeconds = 42;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (timer) {
        print('Timer tick');
        setState(() {
          if (timerSeconds < 1) {
            timer.cancel();
          } else {
            timerSeconds--;
          }
        });
      },
    );
  }

  void resetTimer() {
    setState(() {
      timerSeconds = 30;
    });
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    // final Map<String, dynamic> args =
    //     ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    // final String verificationId = args['verificationId'];
    // final String phoneNumber = args['phoneNumber'];
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 7.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NumberScreen()),
                        );
                      },
                      child: TopButton(
                        ImageConstant.imgArrowLeft,
                      )),
                ),
                Text(
                  timerSeconds.toString().padLeft(2, '0:0'),
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(height: 14.v),
                Container(
                  width: 210.h,
                  margin: EdgeInsets.only(left: 40.h, right: 44.h),
                  child: Text(
                    "Type the verification\ncode we’ve sent you",
                    // maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyLargeBlack90018
                        .copyWith(height: 1.50),
                  ),
                ),
                SizedBox(height: 55.v),
                CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {
                    setState(() {
                      otp = value;
                    });
                  },
                  pinLength: 4,
                ),
                SizedBox(height: 40.v),
                // Button row for digits
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 16.h),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       _buildOtpButton('1'),
                //       _buildOtpButton('2'),
                //       _buildOtpButton('3'),
                //     ],
                //   ),
                // ),
                // SizedBox(height: 30.v),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 16.h),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       _buildOtpButton('4'),
                //       _buildOtpButton('5'),
                //       _buildOtpButton('6'),
                //     ],
                //   ),
                // ),
                // SizedBox(height: 30.v),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 16.h),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       _buildOtpButton('7'),
                //       _buildOtpButton('8'),
                //       _buildOtpButton('9'),
                //     ],
                //   ),
                // ),
                // SizedBox(height: 30.v),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 16.h),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       // Adding an empty space for alignment
                //       SizedBox(width: 16.h),
                //       _buildOtpButton('0'),
                //       SizedBox(width: 16.h),
                //       // Add a backspace button here if needed
                //     ],
                //   ),
                // ),
                //SizedBox(height: 55.v),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        resetTimer();
                      },
                      child: Text("Send again",
                          style: CustomTextStyles.titleMediumPrimary),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileDetailsScreen()),
                        );
                      },
                      // onTap: () => verifyCode(
                      //     verificationId, otp, context), // Pass the entered OTP
                      child: Text("Verify",
                          style: CustomTextStyles.titleMediumPrimary),
                    ),
                  ],
                ),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void verifyCode(
  //     String verificationId, String code, BuildContext context) async {
  //   try {
  //     PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //         verificationId: verificationId, smsCode: code);
  //     await FirebaseAuth.instance.signInWithCredential(credential);
  //     print('User signed in successfully!');
  //     // Navigate to the next screen after successful sign-in
  //     Navigator.pushNamed(context, AppRoutes.profileDetailsScreen);
  //   } catch (e) {
  //     // Handle sign-in errors
  //     print('Error signing in: $e');
  //   }
  // }

  Widget _buildOtpButton(String digit) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (otp.length < 6 && timerSeconds > 0) {
            otp += digit;
          }
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(digit)),
      ),
    );
  }
}
