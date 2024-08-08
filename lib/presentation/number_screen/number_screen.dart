// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/presentation/code_screen/code_screen.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';
import 'package:pawan_s_application2/widgets/custom_phone_number.dart';
//import 'package:firebase_auth/firebase_auth.dart';

// ignore_for_file: must_be_immutable
class NumberScreen extends StatefulWidget {
  NumberScreen({Key? key}) : super(key: key);

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 40.h, top: 139.v, right: 40.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("My mobile",
                                      style: theme.textTheme.displaySmall),
                                  SizedBox(height: 1.v),
                                  Container(
                                      width: 289.h,
                                      margin: EdgeInsets.only(right: 5.h),
                                      child: Text(
                                          "Please enter your valid phone number. We will send you a 4-digit code to verify your account. ",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumBlack900_1
                                              .copyWith(height: 1.50))),
                                  SizedBox(height: 29.v),
                                  CustomPhoneNumber(
                                      country: selectedCountry,
                                      controller: phoneNumberController,
                                      onTap: (Country value) {
                                        setState(() {
                                          selectedCountry = value;
                                        });
                                      }),
                                  SizedBox(height: 64.v),
                                  CustomElevatedButton(
                                      text: "Continue",
                                      onPressed: () {
                                        //onTapContinue(context);
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  CodeScreen()),
                                        );
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Navigates to the codeScreen when the action is triggered.
  // void onTapContinue(BuildContext context) async {
  //   String phoneNumber =
  //       '+${selectedCountry.phoneCode}${phoneNumberController.text}';
  //   try {
  //     await FirebaseAuth.instance.verifyPhoneNumber(
  //       phoneNumber: phoneNumber,
  //       timeout: Duration(seconds: 42),
  //       verificationCompleted: (PhoneAuthCredential credential) {
  //         // This callback will be invoked if the auto-retrieval is successful.
  //         // You can sign in the user here.
  //         print('Verification completed. Signing in...');
  //         signInWithCredential(credential);
  //       },
  //       verificationFailed: (FirebaseAuthException e) {
  //         // This callback will be invoked if verification fails.
  //         // Handle the error here.
  //         print('Verification failed: ${e.message}');
  //       },
  //       codeSent: (String verificationId, int? resendToken) {
  //         // This callback will be invoked after code is sent successfully.
  //         // Navigate to the code verification screen passing verificationId.
  //         print('Code sent. Navigating to CodeScreen...');
  //         Navigator.pushNamed(
  //           context,
  //           AppRoutes.codeScreen,
  //           arguments: {
  //             'verificationId': verificationId,
  //             'phoneNumber': phoneNumber,
  //           },
  //         );
  //       },
  //       codeAutoRetrievalTimeout: (String verificationId) {
  //         // This callback will be invoked when auto-retrieval times out.
  //         // You can handle the timeout here.
  //         print('Auto-retrieval timeout.');
  //       },
  //     );
  //   } catch (e) {
  //     // Handle any exceptions that may occur during verification.
  //     print('Error verifying phone number: $e');
  //   }
  // }

  // void signInWithCredential(PhoneAuthCredential credential) async {
  //   try {
  //     await FirebaseAuth.instance.signInWithCredential(credential);
  //     print('User signed in successfully!');
  //     // Navigate to the next screen after successful sign-in
  //   } catch (e) {
  //     // Handle sign-in errors
  //     print('Error signing in: $e');
  //   }
  // }
}
