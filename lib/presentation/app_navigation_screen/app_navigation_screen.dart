import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Number",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.numberScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Code",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.codeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Calendar",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.calendarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "I am",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.iAmScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Passions",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.passionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Friends",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.friendsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pricing",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pricingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Main",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.mainScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Swipe right",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.swipeRightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Swipe left",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.swipeLeftScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Match",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.matchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Swipe left vTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.swipeLeftVtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Filters - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.filtersTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Matches - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.matchesContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
