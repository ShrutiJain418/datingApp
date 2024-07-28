// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/widgets.dart';
import 'package:pawan_s_application2/presentation/chat_screen/chat_screen.dart';
import 'package:pawan_s_application2/widgets/app_bar/appBarMainpage.dart';

import '../messages_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:pawan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:pawan_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MessagesPage extends StatelessWidget {
  MessagesPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();
  final FocusNode searchFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 40.h,
              vertical: 19.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // CustomSearchView(
                //   controller: searchController,
                //   hintText: "Search",
                //   focusNode: searchFocusNode,
                // ),
                // SizedBox(height: 25.v),
                // Text(
                //   "Messages",
                //   style: CustomTextStyles.titleMediumBlack900,
                // ),
                SizedBox(height: 50.v),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to chat screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatScreen()),
                        );
                      },
                      child: Container(
                        height: 56.adaptSize,
                        width: 56.adaptSize,
                        padding: EdgeInsets.all(2.h),
                        decoration: AppDecoration.outline.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder28,
                            color: Colors.red[100]),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPhoto48x48,
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          radius: BorderRadius.circular(
                            24.h,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 9.v,
                        bottom: 9.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Emelie",
                            style: CustomTextStyles.titleSmallBlack900,
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "Sticker 😍",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 11.v,
                        bottom: 6.v,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "23 min",
                            style: theme.textTheme.labelLarge,
                          ),
                          SizedBox(height: 3.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 20.adaptSize,
                              padding: EdgeInsets.symmetric(
                                horizontal: 7.h,
                                vertical: 2.v,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder10,
                              ),
                              child: Text(
                                "1",
                                style: CustomTextStyles.labelLargeOnPrimary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.v),
                Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray200,
                ),
                _buildUserProfile(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 60.v,
      title: AppbarTitle(
        text: "Messages",
        margin: EdgeInsets.only(left: 44.h, top: 20.0),
      ),
      actions: [
        TopButton(ImageConstant.imgThumbsUpPrimary52x52),
        SizedBox(
          width: 35,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    // Sample data for five user profiles
    List<Map<String, dynamic>> userProfileData = [
      {
        'profileImage': 'assets/images/photo.png',
        'name': 'Chloe',
        'lastActivity': '27 min',
        'status': 'You: Hey! What\'s up, long time?',
      },
      {
        'profileImage': 'assets/images/img_photo_12.png',
        'name': 'Jane Smith',
        'lastActivity': '30 min',
        'status': 'Online',
        'unreadMessages': 1,
      },
      {
        'profileImage': 'assets/images/img_photo_11.png',
        'name': 'Elizabeth',
        'lastActivity': '50 min',
        'status': 'OK see you then.',
        //'unreadMessages': 2,
      },
      {
        'profileImage': 'assets/images/img_play.png',
        'name': 'Penelope',
        'lastActivity': '55 min',
        'status': 'You: Hello how are you?',
        'unreadMessages': 2,
      },
      {
        'profileImage': 'assets/images/img_photo_14.png',
        'name': 'Grace',
        'lastActivity': '1 hour',
        'status': 'Typing..',
        'unreadMessages': 2,
      },
    ];

    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 2.5.v),
          child: SizedBox(
            width: 229.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.gray200,
            ),
          ),
        );
      },
      itemCount: userProfileData.length,
      itemBuilder: (context, index) {
        // Extract data for the current profile
        Map<String, dynamic> data = userProfileData[index];

        return UserprofileItemWidget(
          profileImage: data['profileImage'],
          name: data['name'],
          lastActivity: data['lastActivity'],
          status: data['status'],
          unreadMessages: data['unreadMessages'],
        );
      },
    );
  }
}
