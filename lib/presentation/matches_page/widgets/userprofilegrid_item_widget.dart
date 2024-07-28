import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';

class UserprofilegridItemWidget extends StatelessWidget {
  final String mainImage;
  final String text;

  const UserprofilegridItemWidget({
    Key? key,
    required this.mainImage,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.v,
      width: 140.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: mainImage,
            height: 200.v,
            width: 140.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: AppDecoration.outlineBlack900,
                  child: Text(
                    text,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 4.v),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
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
                          imagePath: ImageConstant
                              .imgPhoto40x140, // Fixed bottom image
                          height: 40.v,
                          width: 140.h,
                          radius: BorderRadius.vertical(
                            bottom: Radius.circular(15.h),
                          ),
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 47.h,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.clear,
                                        size: 20.adaptSize,
                                        color: Colors.white,
                                      ),
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
                                    ],
                                  ),
                                ),
                                // Icon(
                                //   Icons.favorite,
                                //   size: 20.adaptSize,
                                //   color: Colors.white,
                                // ),
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
      ),
    );
  }
}
