import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/presentation/login_screen/loginscreen.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneScreen extends StatefulWidget {
  OnboardingOneScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingOneScreen> createState() => _OnboardingOneScreenState();
}

class _OnboardingOneScreenState extends State<OnboardingOneScreen> {
  int sliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                child: Column(children: [
                  _buildOnboardingSlider(context),
                  Text(title[sliderIndex],
                      style: CustomTextStyles.headlineSmallPrimary),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: Text(
                      label[sliderIndex],
                      style: CustomTextStyles.bodyMediumb2000000,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 27.v),
                  SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: sliderIndex,
                          count: 3,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: appTheme.gray200,
                              dotHeight: 8.v,
                              dotWidth: 8.h))),
                  SizedBox(height: 42.v),
                  CustomElevatedButton(
                      text: "Create an account",
                      margin: EdgeInsets.symmetric(horizontal: 40.h),
                      onPressed: () {
                        onTapCreateAnAccount(context);
                      }),
                  SizedBox(height: 27.v),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Already have an account?",
                              style: CustomTextStyles.bodyMediumb2000000),
                          TextSpan(text: " "),
                          TextSpan(
                              text: "Sign In",
                              style: CustomTextStyles.titleSmallffe94057)
                        ]),
                        textAlign: TextAlign.left),
                  ),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildOnboardingSlider(BuildContext context) {
    return Container(
      //color: Colors.black,
      child: CarouselSlider.builder(
          options: CarouselOptions(
              enlargeCenterPage: true,
              height: 450.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 0.63,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  sliderIndex = index;
                });
              }),
          itemCount: 3,
          itemBuilder: (context, index, realIndex) {
            return Align(
              alignment: Alignment.centerLeft,
              child: CustomImageView(
                imagePath: posterImg[index],
                width: 250.h,
                height: 350.v,
                radius: BorderRadius.circular(
                  15.h,
                ),
                margin: EdgeInsets.only(
                  top: 30.v,
                ),
              ),
            );
          }),
    );
  }

  /// Navigates to the onboardingTwoScreen when the action is triggered.
  onTapCreateAnAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}

List<String> posterImg = [
  "assets/images/img_girl1.png",
  "assets/images/img_girl2.png",
  "assets/images/img_girl3.png",
];

List<String> title = ['How it works', 'Matches', 'Premium'];

List<String> label = [
  'Users going through a vetting process to ensure you never match with bots.',
  'We match you with people that have a large array of similar interests.',
  'Sign up today and enjoy the first month of premium benefits on us.',
];
