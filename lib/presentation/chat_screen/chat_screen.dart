// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/presentation/messages_page/messages_page.dart';
import 'package:pawan_s_application2/widgets/app_bar/appBarMainpage.dart';
import 'package:pawan_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:pawan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';
import 'package:pawan_s_application2/widgets/custom_icon_button.dart';
import 'package:pawan_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: true,
            body: Stack(children: [
              Align(
                  // alignment: Alignment.topCenter,
                  child: Padding(
                padding: EdgeInsets.only(top: 15.v),
                //child: _buildAppBar(context),
                // child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         "Messages",
                //       ),
                //       Container(
                //         padding: EdgeInsets.all(10.0),
                //         decoration: BoxDecoration(
                //           border: Border.all(
                //             color: Colors.grey.shade400,
                //             width: 1,
                //           ),
                //           borderRadius: BorderRadius.circular(10),
                //         ),
                //         child: SvgPicture.asset(
                //           'assets/images/img_thumbs_up_primary_52x52.svg',
                //           height: 28.h,
                //           width: 28.h,
                //         ),
                //       ),

                //       // CustomIconButton(
                //       //     height: 52.adaptSize,
                //       //     width: 52.adaptSize,
                //       //     padding: EdgeInsets.all(14.h),
                //       //     child: CustomImageView(
                //       //         imagePath: ImageConstant
                //       //             .imgThumbsUpPrimary52x52))
                //     ]),
              )),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      //height: 568.v,
                      width: double.maxFinite,
                      //decoration: AppDecoration.fillBlack,
                      child: Stack(children: [
                        Align(
                            //alignment: Alignment.bottomCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 40.h),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: fs.Svg(ImageConstant.imgGroup20),
                                        fit: BoxFit.cover)),
                                child: SingleChildScrollView(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 6.v),
                                        Row(children: [
                                          Container(
                                              height: 56.adaptSize,
                                              width: 56.adaptSize,
                                              padding: EdgeInsets.all(2.h),
                                              decoration: AppDecoration.outline
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder28),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPhoto12,
                                                  height: 48.adaptSize,
                                                  width: 48.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      24.h),
                                                  alignment: Alignment.center)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.h,
                                                  top: 3.v,
                                                  bottom: 8.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Grace",
                                                        style: CustomTextStyles
                                                            .headlineSmallBold),
                                                    Row(children: [
                                                      Container(
                                                          height: 6.adaptSize,
                                                          width: 6.adaptSize,
                                                          margin: EdgeInsets
                                                              .symmetric(
                                                                  vertical:
                                                                      4.v),
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          3.h))),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 4.h),
                                                          child: Text("Online",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall))
                                                    ])
                                                  ])),
                                          Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              onTapHeader(context);
                                            },
                                            child: CustomIconButton(
                                              height: 52.adaptSize,
                                              width: 52.adaptSize,
                                              padding: EdgeInsets.all(14.h),
                                              child: SvgPicture.asset(
                                                'assets/images/img_notification_black_900.svg',
                                              ),
                                            ),
                                          ),
                                        ]),
                                        SizedBox(height: 44.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 6.v, bottom: 7.v),
                                                  child: SizedBox(
                                                      width: 121.h,
                                                      child: Divider())),
                                              Text("Today",
                                                  style: CustomTextStyles
                                                      .bodySmallBlack900),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 6.v, bottom: 7.v),
                                                  child: SizedBox(
                                                      width: 121.h,
                                                      child: Divider()))
                                            ]),
                                        SizedBox(height: 9.v),
                                        Container(
                                            width: 250.h,
                                            margin:
                                                EdgeInsets.only(right: 45.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.h,
                                                vertical: 13.v),
                                            decoration: AppDecoration
                                                .fillPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL15),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 5.v),
                                                  Container(
                                                      width: 205.h,
                                                      margin: EdgeInsets.only(
                                                          right: 12.h),
                                                      child: Text(
                                                          "Hi pa, epdi iruka? I saw you in the app that we’ve crossed paths several times this week ",
                                                          maxLines: 3,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: theme.textTheme
                                                              .bodyMedium!
                                                              .copyWith(
                                                                  height:
                                                                      1.50)))
                                                ])),
                                        SizedBox(height: 6.v),
                                        Text("2:55 PM",
                                            style: theme.textTheme.bodySmall),
                                        SizedBox(height: 10.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 45.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 16.h,
                                                    vertical: 13.v),
                                                decoration: AppDecoration
                                                    .fillGray
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL151),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SizedBox(height: 6.v),
                                                      SizedBox(
                                                          width: 216.h,
                                                          child: Text(
                                                              "Nallaruken! Nice to meet you Grace! What about a cup of coffee today evening? ️ ",
                                                              maxLines: 3,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyMedium!
                                                                  .copyWith(
                                                                      height:
                                                                          1.50)))
                                                    ]))),
                                        SizedBox(height: 5.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 1.v),
                                                      child: Text("3:02 PM",
                                                          style: theme.textTheme
                                                              .bodySmall)),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  SvgPicture.asset(
                                                    'assets/images/img_checkmark_primary.svg',
                                                  ),
                                                ])),
                                        SizedBox(height: 10.v),
                                        CustomElevatedButton(
                                            height: 53.v,
                                            width: 143.h,
                                            text: "Sure, let’s do it! 😊",
                                            buttonStyle: CustomButtonStyles
                                                .fillPrimaryTL15,
                                            buttonTextStyle:
                                                theme.textTheme.bodyMedium!),
                                        SizedBox(height: 6.v),
                                        Text("3:10 PM",
                                            style: theme.textTheme.bodySmall),
                                        SizedBox(height: 10.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                margin:
                                                    EdgeInsets.only(left: 71.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 5.h,
                                                    vertical: 13.v),
                                                decoration: AppDecoration
                                                    .fillGray
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL151),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      SizedBox(height: 5.v),
                                                      SizedBox(
                                                          width: 210.h,
                                                          child: Text(
                                                              "Great I will text you later the exact\ntime and place. See you soon!",
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyMedium!
                                                                  .copyWith(
                                                                      height:
                                                                          1.50)))
                                                    ]))),
                                        SizedBox(height: 5.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 1.v),
                                                      child: Text("3:12 PM",
                                                          style: theme.textTheme
                                                              .bodySmall)),
                                                  SizedBox(
                                                    width: 7,
                                                  ),
                                                  SvgPicture.asset(
                                                    'assets/images/img_checkmark_primary.svg',
                                                  ),
                                                ])),
                                        SizedBox(height: 34.v),
                                        Row(children: [
                                          Expanded(
                                            child: TextFormField(
                                              controller: messageController,
                                              textInputAction:
                                                  TextInputAction.done,
                                              decoration: InputDecoration(
                                                labelText: "Your message",
                                                labelStyle: CustomTextStyles
                                                    .bodyMediumBlack900,
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 19.h,
                                                        vertical: 15.v),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                            ),
                                          )

                                          // Padding(
                                          //     padding:
                                          //         EdgeInsets.only(
                                          //             left: 15.h),
                                          //     child: CustomIconButton(
                                          //       height: 48.adaptSize,
                                          //       width: 48.adaptSize,
                                          //       padding:
                                          //           EdgeInsets.all(
                                          //               14.h),
                                          //       child:
                                          //           SvgPicture.asset(
                                          //         'assets/images/img_menu_primary.svg',
                                          //       ),
                                          //     ))
                                        ])
                                      ]),
                                ))),
                        CustomImageView(
                            imagePath: ImageConstant.imgThumbsUpOnprimary,
                            height: 12.v,
                            width: 27.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 49.v))
                      ])))
            ])));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapHeader(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60.v,
      title: AppbarTitle(
        text: "Messages",
        margin: EdgeInsets.only(left: 10.h),
      ),
      actions: [
        TopButton(ImageConstant.imgThumbsUpPrimary52x52),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
