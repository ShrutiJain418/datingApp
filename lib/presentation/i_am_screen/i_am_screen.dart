// ignore_for_file: prefer_const_constructors, unused_import

import '../i_am_screen/widgets/iam_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:pawan_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:pawan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';

class IAmScreen extends StatefulWidget {
  const IAmScreen({Key? key}) : super(key: key);

  @override
  State<IAmScreen> createState() => _IAmScreenState();
}

class _IAmScreenState extends State<IAmScreen> {
  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 37.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gender", style: theme.textTheme.displaySmall),
                      SizedBox(height: 63.v),
                      _buildIAm(context)
                    ])),
            bottomNavigationBar: _buildContinueButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 92.h,
      leading: Container(
        margin:
            EdgeInsets.only(left: 30.h, top: 10.v, bottom: 2.v, right: 25.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.pink,
          ),
          onPressed: () {
            onTapArrowLeft(context);
          },
        ),
      ),
      // actions: [
      //   AppbarSubtitleOne(
      //     text: "Skip",
      //     margin: EdgeInsets.fromLTRB(40.h, 18.v, 40.h, 17.v),
      //   ),
      // ],
    );
  }

  /// Section Widget
  Widget _buildIAm(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return SizedBox(height: 10.v);
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        // Initializing text and icon variables
        IconData icon = Icons.done;
        String text = '';

        // Setting values based on index
        switch (index) {
          case 0:
            icon = Icons.arrow_forward_ios;
            text = 'Woman';
            break;
          case 1:
            icon = Icons.arrow_forward_ios;
            text = 'Man';
            break;
          case 2:
            icon = Icons.arrow_forward_ios;
            text = 'Others';
            break;
        }

        // Returning the IamItemWidget with initialized values
        return IamItemWidget(
          text: text,
          icon: icon,
          isSelected: _selectedIndex == index,
          onTap: (isSelected) {
            setState(() {
              _selectedIndex = isSelected ? index : -1;
            });
          },
        );
      },
    );
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
