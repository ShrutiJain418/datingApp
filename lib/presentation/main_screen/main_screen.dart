// ignore_for_file: avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:pawan_s_application2/presentation/filters_page/filters_page.dart';
import 'package:pawan_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:pawan_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:pawan_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:pawan_s_application2/widgets/custom_bottom_bar.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 24.v),
          child: Column(
            children: [
              _buildAppBar(context),
              SizedBox(height: 21.v),
              _buildSwiper(context),
              SizedBox(height: 21.v),
              _buildButtons(context),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavBar(
      //   currentIndex: 0,
      // ),
    );
  }
}

Widget _buildAppBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade200,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/img_arrow_left.svg',
              height: 28.h,
              width: 28.h,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppbarSubtitle(text: "Discover"),
            SizedBox(height: 3.v),
            AppbarSubtitleTwo(text: "Chicago, II"),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FiltersPage()),
            );
          },
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade200,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'assets/images/img_thumbs_up_primary_52x52.svg',
              height: 28.h,
              width: 28.h,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildSwiper(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.6,
    child: AppinioSwiper(
      cardCount: 20,
      backgroundCardCount: 1,
      defaultDirection: AxisDirection.right,
      cardBuilder: (context, index) {
        return Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: "assets/images/${img[index]}",
              height: 450.v,
              width: 295.h,
              radius: BorderRadius.circular(15.h),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.v),
                  CustomElevatedButton(
                    height: 34.v,
                    width: 61.h,
                    text: "1 km",
                    margin: EdgeInsets.only(left: 16.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 2.h),
                      child: SvgPicture.asset(
                        ImageConstant.imgLinkedin.toString(),
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.locationBack,
                    buttonTextStyle: CustomTextStyles.labelLargeOnPrimary,
                  ),
                  SizedBox(height: 92.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SvgPicture.asset(
                      ImageConstant.imgNotification,
                      height: 76.v,
                      width: 20.h,
                      alignment: Alignment.centerRight,
                    ),
                  ),
                  SizedBox(height: 157.v),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    color: appTheme.black900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.customBorderBL15,
                    ),
                    child: Container(
                      height: 83.v,
                      width: 295.h,
                      decoration: AppDecoration.fillBlack.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL15,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPhoto83x295,
                            height: 83.v,
                            width: 295.h,
                            radius: BorderRadius.vertical(
                              bottom: Radius.circular(15.h),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                top: 8.v,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    names[index],
                                    style:
                                        CustomTextStyles.headlineSmallOnPrimary,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    professions[index],
                                    style: CustomTextStyles.bodyMediumOnPrimary,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    ),
  );
}

Widget _buildButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        padding: EdgeInsetsDirectional.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withOpacity(0.2), // Adjust shadow color and opacity
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2), // Adjust the offset of the shadow
            ),
          ],
          border: Border.all(
            color: Colors.white.withOpacity(0.5), // Adjust border opacity here
            width: 1,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            ImageConstant.imgCloseYellow900,
            height: 34.adaptSize,
            width: 34.adaptSize,
          ),
        ),
      ),
      Container(
        padding: EdgeInsetsDirectional.all(8),
        decoration: BoxDecoration(
          color: Colors.pink,
          border: Border.all(
            color: Colors.pink,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            ImageConstant.imgContrastOnprimary,
            height: 40.adaptSize,
            width: 40.adaptSize,
            color: Colors.white,
          ),
        ),
      ),
      Container(
        padding: EdgeInsetsDirectional.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withOpacity(0.2), // Adjust shadow color and opacity
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2), // Adjust the offset of the shadow
            ),
          ],
          border: Border.all(
            color: Colors.white.withOpacity(0.5), // Adjust border opacity here
            width: 1,
          ),
          borderRadius: BorderRadius.circular(40),
        ),
        child: IconButton(
          onPressed: () {},
          icon: CustomImageView(
            imagePath: ImageConstant.imgGroup40,
            height: 34.adaptSize,
            width: 34.adaptSize,
          ),
        ),
      ),
    ],
  );
}

List<String> img = [
  "img_photo_178x91.png",
  "img_photo_178x92.png",
  "img_photo_200x140.png",
  "img_photo_278x142.png",
  "img_photo_278x143.png",
  "img_photo_415x375.png",
  "img_photo_450x295.png",
  "img_photo_450x231.png",
  "img_photo_178x91.png",
  "img_photo_178x92.png",
  "img_photo_200x140.png",
  "img_photo_278x142.png",
  "img_photo_278x143.png",
  "img_photo_415x375.png",
  "img_photo_450x295.png",
  "img_photo_450x231.png",
  "img_photo_178x91.png",
  "img_photo_178x92.png",
  "img_photo_200x140.png",
  "img_photo_278x142.png",
];

List<String> names = [
  'Jesica Parker, 23',
  'John Smith, 28',
  'Emily Johnson, 25',
  'Michael Davis, 30',
  'Sophia White, 27',
  'Daniel Brown, 22',
  'Olivia Martinez, 29',
  'William Taylor, 26',
  'Ava Jackson, 24',
  'Matthew Harris, 31',
  'Jesica Parker, 23',
  'John Smith, 28',
  'Emily Johnson, 25',
  'Michael Davis, 30',
  'Sophia White, 27',
  'Daniel Brown, 22',
  'Olivia Martinez, 29',
  'William Taylor, 26',
  'Ava Jackson, 24',
  'Matthew Harris, 31',
];

List<String> professions = [
  'Marketer',
  'Software Engineer',
  'Graphic Designer',
  'Financial Analyst',
  'Teacher',
  'Photographer',
  'Nurse',
  'Chef',
  'Journalist',
  'Fitness Trainer',
  'Marketer',
  'Software Engineer',
  'Graphic Designer',
  'Financial Analyst',
  'Teacher',
  'Photographer',
  'Nurse',
  'Chef',
  'Journalist',
  'Fitness Trainer',
];
