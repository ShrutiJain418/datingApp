// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/presentation/login_screen/loginscreen.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';
import 'package:pawan_s_application2/widgets/custom_icon_button.dart';
import 'package:pawan_s_application2/widgets/custom_outlined_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 40.h,
            vertical: 47.v,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 97.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 253.h,
                    margin: EdgeInsets.only(
                      left: 13.h,
                      right: 28.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 6.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup188,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6.v,
                            bottom: 23.v,
                          ),
                          child: Text(
                            "Loops",
                            style: theme.textTheme.headlineMedium,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup27,
                          height: 45.v,
                          width: 5.h,
                          margin: EdgeInsets.only(
                            left: 22.h,
                            bottom: 18.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLink1,
                          height: 34.adaptSize,
                          width: 34.adaptSize,
                          margin: EdgeInsets.only(
                            left: 15.h,
                            top: 4.v,
                            bottom: 25.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 90.v),
                Text(
                  "Sign up to continue",
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                SizedBox(height: 31.v),
                CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.numberScreen);
                  },
                  text: "Use phone number",
                ),
                // SizedBox(height: 20.v),
                // CustomOutlinedButton(
                //   onPressed: () =>

                //   text: ,
                // ),
                SizedBox(height: 67.v),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.only(
                //         top: 6.v,
                //         bottom: 8.v,
                //       ),
                //       child: SizedBox(
                //         width: 94.h,
                //         child: Divider(
                //           color: appTheme.black900.withOpacity(0.4),
                //         ),
                //       ),
                //     ),
                //     Text(
                //       "or sign up with",
                //       style: CustomTextStyles.bodySmallBlack900_1,
                //     ),
                //     Padding(
                //       padding: EdgeInsets.only(
                //         top: 6.v,
                //         bottom: 8.v,
                //       ),
                //       child: SizedBox(
                //         width: 94.h,
                //         child: Divider(
                //           color: appTheme.black900.withOpacity(0.4),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(height: 23.v),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 31.h),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       CustomIconButton(
                //         height: 64.adaptSize,
                //         width: 64.adaptSize,
                //         padding: EdgeInsets.all(16.h),
                //         child: SvgPicture.asset(
                //           'assets/images/img_facebook.svg',
                //         ),
                //       ),
                //       Padding(
                //         padding: EdgeInsets.only(left: 20.h),
                //         child: CustomIconButton(
                //           height: 64.adaptSize,
                //           width: 64.adaptSize,
                //           padding: EdgeInsets.all(16.h),
                //           child: SvgPicture.asset(
                //             'assets/images/img_google.svg',
                //           ),
                //         ),
                //       ),
                //       Padding(
                //         padding: EdgeInsets.only(left: 20.h),
                //         child: CustomIconButton(
                //           height: 64.adaptSize,
                //           width: 64.adaptSize,
                //           padding: EdgeInsets.all(16.h),
                //           child: Image.asset('assets/images/apple.png'),
                //         ),
                //       ),
                //     ],
                //   ),
                //),
                // SizedBox(height: 41.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account?",
                        style: CustomTextStyles.bodyMediumb2000000,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "Sign In",
                        style: CustomTextStyles.titleSmallffe94057,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "Terms of use",
                        style: CustomTextStyles.bodyMediumPrimary_2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 35.h),
                      child: Text(
                        "Privacy Policy",
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
