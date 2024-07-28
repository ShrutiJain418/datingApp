import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawan_s_application2/widgets/app_bar/appBarMainpage.dart';

import '../profile_screen/widgets/chipviewone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';
import 'package:pawan_s_application2/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 1755.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          _buildStackOne(context),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.h, vertical: 18.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 41.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 4.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Jay, 23",
                                                            style: CustomTextStyles
                                                                .headlineSmallBold),
                                                        SizedBox(height: 2.v),
                                                        Text("Artist",
                                                            style: CustomTextStyles
                                                                .bodyMediumBlack900_1)
                                                      ])),
                                              CustomIconButton(
                                                  height: 52.adaptSize,
                                                  width: 52.adaptSize,
                                                  padding: EdgeInsets.all(14.h),
                                                  child: SvgPicture.asset(
                                                      ImageConstant.imgSave))
                                            ]),
                                        SizedBox(height: 31.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 3.v),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Location",
                                                            style: CustomTextStyles
                                                                .titleMediumBlack900_1),
                                                        SizedBox(height: 8.v),
                                                        Text("Chennai, India",
                                                            style: CustomTextStyles
                                                                .bodyMediumBlack900_1)
                                                      ])),
                                              CustomElevatedButton(
                                                  height: 34.v,
                                                  width: 61.h,
                                                  text: "1 km",
                                                  margin: EdgeInsets.only(
                                                      bottom: 15.v),
                                                  leftIcon: Container(
                                                      margin: EdgeInsets.only(
                                                          right: 2.h),
                                                      child: SvgPicture.asset(
                                                          ImageConstant
                                                              .imgLinkedinPrimary,
                                                          height: 14.adaptSize,
                                                          width: 14.adaptSize)),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .fillOnPrimary,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .labelLargePrimary)
                                            ]),
                                        SizedBox(height: 34.v),
                                        Text("About",
                                            style: CustomTextStyles
                                                .titleMediumBlack900_1),
                                        SizedBox(height: 8.v),
                                        SizedBox(
                                            width: 286.h,
                                            child: ReadMoreText(
                                                "My name is Jayshree and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy singing..",
                                                trimLines: 3,
                                                colorClickableText:
                                                    theme.colorScheme.primary,
                                                trimMode: TrimMode.Line,
                                                trimCollapsedText: "Read more",
                                                moreStyle: CustomTextStyles
                                                    .bodyMediumBlack900_1
                                                    .copyWith(height: 1.50),
                                                lessStyle: CustomTextStyles
                                                    .bodyMediumBlack900_1
                                                    .copyWith(height: 1.50))),
                                        SizedBox(height: 34.v),
                                        Text("Interests",
                                            style: CustomTextStyles
                                                .titleMediumBlack900_1),
                                        SizedBox(height: 10.v),
                                        _buildChipViewOne(context),
                                        SizedBox(height: 39.v),
                                        Text("Location",
                                            style: CustomTextStyles
                                                .titleMediumBlack900_1),
                                        SizedBox(height: 18.v),
                                        Container(
                                            height: 180.v,
                                            width: 291.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.blueGray100)),
                                        SizedBox(height: 22.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Gallery",
                                                  style: CustomTextStyles
                                                      .titleMediumBlack900_1),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Text("See all",
                                                      style: theme.textTheme
                                                          .titleSmall))
                                            ]),
                                        SizedBox(height: 24.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPhoto278x142,
                                                  height: 278.v,
                                                  width: 142.h,
                                                  radius: BorderRadius.circular(
                                                      5.h)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPhoto278x143,
                                                  height: 278.v,
                                                  width: 143.h,
                                                  radius: BorderRadius.circular(
                                                      5.h))
                                            ]),
                                        SizedBox(height: 14.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPhoto178x92,
                                                  height: 178.v,
                                                  width: 92.h,
                                                  radius: BorderRadius.circular(
                                                      5.h)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPhoto178x91,
                                                  height: 178.v,
                                                  width: 91.h,
                                                  radius: BorderRadius.circular(
                                                      5.h)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPhoto13,
                                                  height: 178.v,
                                                  width: 92.h,
                                                  radius: BorderRadius.circular(
                                                      5.h))
                                            ])
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 337.v),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 10.v, bottom: 11.v),
                                            child: CustomIconButton(
                                                height: 78.adaptSize,
                                                width: 78.adaptSize,
                                                padding: EdgeInsets.all(24.h),
                                                decoration:
                                                    IconButtonStyleHelper
                                                        .outlineBlack,
                                                child: SvgPicture.asset(
                                                    ImageConstant
                                                        .imgCloseYellow900))),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 20.h),
                                            child: CustomIconButton(
                                                height: 99.adaptSize,
                                                width: 99.adaptSize,
                                                padding: EdgeInsets.all(28.h),
                                                decoration:
                                                    IconButtonStyleHelper
                                                        .outlinePrimary,
                                                child: SvgPicture.asset(
                                                    ImageConstant
                                                        .imgContrastOnprimary))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.h,
                                                top: 10.v,
                                                bottom: 11.v),
                                            child: CustomIconButton(
                                                height: 78.adaptSize,
                                                width: 78.adaptSize,
                                                padding: EdgeInsets.all(24.h),
                                                decoration:
                                                    IconButtonStyleHelper
                                                        .outlineBlack,
                                                child: SvgPicture.asset(
                                                    ImageConstant.imgSignal)))
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildStackOne(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 415.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgPhoto415x375,
                  height: 415.v,
                  width: 375.h,
                  alignment: Alignment.center),
              CustomAppBar(
                height: 60.v,
                leadingWidth: 60,
                leading: TopButton(ImageConstant.imgArrowLeftOnprimary),
              ),
            ])));
  }

  /// Section Widget
  Widget _buildChipViewOne(BuildContext context) {
    // Define a list of texts
    List<String> texts = [
      'Travelling',
      'Books',
      'Music',
      'Dancing',
      'Modeling'
    ];

    return Wrap(
      runSpacing: 10.v,
      spacing: 10.h,
      children: List<Widget>.generate(
        5,
        (index) => ChipviewoneItemWidget(
            text: index < texts.length ? texts[index] : ''),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
