import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:pawan_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:pawan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:pawan_s_application2/widgets/custom_drop_down.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PricingScreen extends StatelessWidget {
  PricingScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 27.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 14.v),
                        Text("Pricing", style: theme.textTheme.displaySmall),
                        SizedBox(height: 25.v),
                        Container(
                            decoration: AppDecoration.outlineGray200.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder15),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomDropDown(
                                      icon: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 18.v, 20.h, 14.v),
                                          child: CustomImageView(
                                              imagePath: 'assets/images/img_arrow_left.svg',
                                              height: 24.adaptSize,
                                              width: 24.adaptSize)
                                      ),
                                      hintText: "Iron",
                                      items: dropdownItemList,
                                      onChanged: (value) {}),
                                  SizedBox(height: 25.v),
                                  Container(
                                      width: 241.h,
                                      margin: EdgeInsets.only(
                                          left: 13.h, right: 41.h),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "Weekly\n100 likes and upto 10 chats\nstarting @ just ",
                                                style: CustomTextStyles
                                                    .titleLargeff000000
                                                    .copyWith(height: 1.50)),
                                            TextSpan(
                                                text: "299",
                                                style: CustomTextStyles
                                                    .titleMediumffe94057)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  SizedBox(height: 21.v),
                                  Container(
                                      width: 250.h,
                                      margin: EdgeInsets.only(
                                          left: 14.h, right: 30.h),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "Monthly\n500 likes and upto 60 chats\nstarting @ just ",
                                                style: CustomTextStyles
                                                    .titleLargeff000000
                                                    .copyWith(height: 1.50)),
                                            TextSpan(
                                                text: "899",
                                                style: CustomTextStyles
                                                    .titleMediumffe94057)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  SizedBox(height: 21.v),
                                  Container(
                                      width: 218.h,
                                      margin: EdgeInsets.only(
                                          left: 14.h, right: 62.h),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "Monthly\n2000 likes and upto 250 chats\nstarting @ just ",
                                                style: CustomTextStyles
                                                    .titleLargeff000000
                                                    .copyWith(height: 1.50)),
                                            TextSpan(
                                                text: "1999",
                                                style: CustomTextStyles
                                                    .titleMediumffe94057)
                                          ]),
                                          textAlign: TextAlign.left)),
                                  SizedBox(height: 20.v)
                                ]))
                      ])),
            ),
            bottomNavigationBar: _buildContinueButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 92.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 40.h, top: 2.v, bottom: 2.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitleOne(
              text: "Home", margin: EdgeInsets.fromLTRB(30.h, 17.v, 30.h, 18.v))
        ]);
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
        onPressed: () {
          onTapContinueButton(context);
        });
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the passionsScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passionsScreen);
  }
}
