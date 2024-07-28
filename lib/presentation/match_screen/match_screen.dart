import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/presentation/messages_page/messages_page.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';
import 'package:pawan_s_application2/widgets/custom_icon_button.dart';
import 'package:pawan_s_application2/widgets/custom_outlined_button.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 40.h,
              vertical: 48.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 5.v),
                SizedBox(
                  height: 403.v,
                  width: 294.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPhoto264x199,
                        height: 264.v,
                        width: 199.h,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 25.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgPhoto1,
                        height: 264.v,
                        width: 199.h,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 22.v),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: 69.adaptSize,
                            width: 69.adaptSize,
                            decoration: IconButtonStyleHelper.outlineBlackTL34,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: SvgPicture.asset(
                                'assets/images/img_favorite_primary_69x69.svg',
                              ),
                            )),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                            height: 69.adaptSize,
                            width: 69.adaptSize,
                            decoration: IconButtonStyleHelper.outlineBlackTL34,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: SvgPicture.asset(
                                'assets/images/img_favorite_primary_50x50.svg',
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.v),
                Text(
                  "It’s a match, Jake!",
                  style: CustomTextStyles.displaySmallPrimary,
                ),
                SizedBox(height: 2.v),
                Text(
                  "Start a conversation now with each other",
                  style: CustomTextStyles.bodyMediumBlack900_1,
                ),
                SizedBox(height: 84.v),
                CustomElevatedButton(
                  onPressed: () {
                    onTapSayHelo(context);
                  },
                  text: "Say hello",
                ),
                SizedBox(height: 20.v),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: CustomOutlinedButton(
                    text: "Keep swiping",
                    buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapSayHelo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MessagesPage()),
    );
  }
}
