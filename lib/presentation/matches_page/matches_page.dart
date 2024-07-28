import 'package:flutter_svg/flutter_svg.dart';

import '../matches_page/widgets/userprofilegrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MatchesPage extends StatelessWidget {
  const MatchesPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 20.v),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 8.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "Matches",
                          style: theme.textTheme.displaySmall,
                        ),
                      ),
                      CustomIconButton(
                        height: 52.adaptSize,
                        width: 52.adaptSize,
                        padding: EdgeInsets.all(14.h),
                        child: SvgPicture.asset(
                          ImageConstant.imgUserPrimary52x52,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 11.v),
                  Container(
                    width: 289.h,
                    margin: EdgeInsets.only(right: 5.h),
                    child: Text(
                      "This is a list of people who have liked you and your matches.",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeBlack900.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.v,
                          bottom: 7.v,
                        ),
                        child: SizedBox(
                          width: 121.h,
                          child: Divider(),
                        ),
                      ),
                      Text(
                        "Today",
                        style: CustomTextStyles.bodySmallBlack900,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.v,
                          bottom: 7.v,
                        ),
                        child: SizedBox(
                          width: 121.h,
                          child: Divider(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.v),
                  _buildUserProfileGrid(context),
                  SizedBox(height: 19.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.v,
                          bottom: 7.v,
                        ),
                        child: SizedBox(
                          width: 110.h,
                          child: Divider(),
                        ),
                      ),
                      Text(
                        "Yesterday",
                        style: theme.textTheme.bodySmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.v,
                          bottom: 7.v,
                        ),
                        child: SizedBox(
                          width: 110.h,
                          child: Divider(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 200.v,
                        width: 140.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPhoto8,
                              height: 200.v,
                              width: 140.h,
                              radius: BorderRadius.circular(
                                15.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            _buildFiftyThree(context),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 200.v,
                        width: 140.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPhoto10,
                              height: 200.v,
                              width: 140.h,
                              radius: BorderRadius.circular(
                                15.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            _buildFiftyThree(context),
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 200.v,
                      //   width: 140.h,
                      //   child: Stack(
                      //     alignment: Alignment.bottomCenter,
                      //     children: [
                      //       _buildFiftyThree(context),
                      //       Align(
                      //         alignment: Alignment.center,
                      //         child: SizedBox(
                      //           height: 200.v,
                      //           width: 140.h,
                      //           child: Stack(
                      //             alignment: Alignment.center,
                      //             children: [
                      //               Padding(
                      //                 padding: EdgeInsets.only(
                      //                   top: 5.v,
                      //                   right: 4.h,
                      //                 ),
                      //                 child: CustomIconButton(
                      //                   height: 46.adaptSize,
                      //                   width: 46.adaptSize,
                      //                   padding: EdgeInsets.all(11.h),
                      //                   decoration: IconButtonStyleHelper
                      //                       .outlineBlackTL23,
                      //                   alignment: Alignment.topRight,
                      //                   child: CustomImageView(
                      //                     imagePath: ImageConstant
                      //                         .imgFavoritePrimary69x69,
                      //                   ),
                      //                 ),
                      //               ),
                      //               CustomImageView(
                      //                 imagePath: ImageConstant.imgPhoto10,
                      //                 height: 200.v,
                      //                 width: 140.h,
                      //                 radius: BorderRadius.circular(
                      //                   15.h,
                      //                 ),
                      //                 alignment: Alignment.center,
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileGrid(BuildContext context) {
    // Define lists of image paths and texts
    List<String> imagePaths = [
      'assets/images/img_photo_2.png',
      'assets/images/img_photo_4.png',
      'assets/images/img_photo_6.png',
      'assets/images/img_photo_200x140.png',
    ];
    List<String> texts = [
      'Annabelle, 20',
      'Reagan, 24',
      'Hdley, 25',
      'Leilani, 19',
    ];

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 201.v,
        crossAxisCount: 2,
        mainAxisSpacing: 15.h,
        crossAxisSpacing: 15.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        // Access the corresponding image path and text from the lists
        String imagePath = index < imagePaths.length ? imagePaths[index] : '';
        String text = index < texts.length ? texts[index] : '';
        return UserprofilegridItemWidget(
          mainImage: imagePath,
          text: text,
        );
      },
    );
  }

  /// Common widget
  Widget _buildFiftyThree(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.black900,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.customBorderBL15,
      ),
      child: Container(
        height: 40.v,
        width: 140.h,
        decoration: AppDecoration.fillBlack.copyWith(
          borderRadius: BorderRadiusStyle.customBorderBL15,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPhoto9,
              height: 40.v,
              width: 140.h,
              radius: BorderRadius.vertical(
                bottom: Radius.circular(15.h),
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 92.h,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.clear,
                      size: 20.adaptSize,
                      color: Colors.white,
                    ),
                    // CustomImageView(
                    //   imagePath: ImageConstant.imgCloseOnprimary,
                    //   height: 20.adaptSize,
                    //   width: 20.adaptSize,
                    //   margin: EdgeInsets.symmetric(vertical: 10.v),
                    // ),
                    // Opacity(
                    //   opacity: 0.5,
                    //   child: SizedBox(
                    //     height: 40.v,
                    //     child: VerticalDivider(
                    //       width: 1.h,
                    //       thickness: 1.v,
                    //       color: theme.colorScheme.onPrimary,
                    //     ),
                    //   ),
                    // ),
                    // Icon(
                    //   Icons.favorite,
                    //   size: 20.adaptSize,
                    //   color: Colors.white,
                    // ),
                    // CustomImageView(
                    //   imagePath: ImageConstant.imgContrastOnprimary,
                    //   height: 20.adaptSize,
                    //   width: 20.adaptSize,
                    //   margin: EdgeInsets.symmetric(vertical: 10.v),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
