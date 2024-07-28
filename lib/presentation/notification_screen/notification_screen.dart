// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:pawan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:pawan_s_application2/widgets/custom_bottom_bar.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            //appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 42.h, top: 69.v, right: 42.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgChat,
                          height: 240.adaptSize,
                          width: 240.adaptSize),
                      SizedBox(height: 69.v),
                      Text("Enable notification’s",
                          style: CustomTextStyles.headlineSmallBold),
                      SizedBox(height: 14.v),
                      SizedBox(
                          width: 289.h,
                          child: Text(
                              "Get push-notification when you get the match or receive a message.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyMediumBlack900_1
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildIWantToBeNotified(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(actions: [
      AppbarSubtitleOne(
          text: "Skip",
          margin: EdgeInsets.symmetric(horizontal: 40.h, vertical: 18.v))
    ]);
  }

  /// Section Widget
  Widget _buildIWantToBeNotified(BuildContext context) {
    return CustomElevatedButton(
        text: "I want to be notified",
        margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => BottomNavBar(
                      currentIndex: 0,
                    )),
          );
        });
  }
}
