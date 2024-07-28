import 'package:flutter/material.dart';
import 'package:pawan_s_application2/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:pawan_s_application2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:pawan_s_application2/presentation/number_screen/number_screen.dart';
import 'package:pawan_s_application2/presentation/code_screen/code_screen.dart';
import 'package:pawan_s_application2/presentation/profile_details_screen/profile_details_screen.dart';
import 'package:pawan_s_application2/presentation/calendar_screen/calendar_screen.dart';
import 'package:pawan_s_application2/presentation/i_am_screen/i_am_screen.dart';
import 'package:pawan_s_application2/presentation/passions_screen/passions_screen.dart';
import 'package:pawan_s_application2/presentation/friends_screen/friends_screen.dart';
import 'package:pawan_s_application2/presentation/notification_screen/notification_screen.dart';
import 'package:pawan_s_application2/presentation/pricing_screen/pricing_screen.dart';
import 'package:pawan_s_application2/presentation/main_screen/main_screen.dart';
import 'package:pawan_s_application2/presentation/match_screen/match_screen.dart';
import 'package:pawan_s_application2/presentation/filters_tab_container_screen/filters_tab_container_screen.dart';
import 'package:pawan_s_application2/presentation/matches_container_screen/matches_container_screen.dart';
import 'package:pawan_s_application2/presentation/chat_screen/chat_screen.dart';
import 'package:pawan_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:pawan_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingOneScreen = '/onboarding_one_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String numberScreen = '/number_screen';
  static const String codeScreen = '/code_screen';
  static const String profileDetailsScreen = '/profile_details_screen';
  static const String calendarScreen = '/calendar_screen';
  static const String iAmScreen = '/i_am_screen';
  static const String passionsScreen = '/passions_screen';
  static const String friendsScreen = '/friends_screen';
  static const String notificationScreen = '/notification_screen';
  static const String pricingScreen = '/pricing_screen';
  static const String mainScreen = '/main_screen';
  static const String swipeRightScreen = '/swipe_right_screen';
  static const String swipeLeftScreen = '/swipe_left_screen';
  static const String matchScreen = '/match_screen';
  static const String swipeLeftVtwoScreen = '/swipe_left_vtwo_screen';
  static const String filtersPage = '/filters_page';
  static const String filtersTabContainerScreen =
      '/filters_tab_container_screen';
  static const String matchesPage = '/matches_page';
  static const String matchesContainerScreen = '/matches_container_screen';
  static const String messagesPage = '/messages_page';
  static const String chatScreen = '/chat_screen';
  static const String profileScreen = '/profile_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardingOneScreen: (context) => OnboardingOneScreen(),
    signUpScreen: (context) => SignUpScreen(),
    numberScreen: (context) => NumberScreen(),
    codeScreen: (context) => CodeScreen(),
    profileDetailsScreen: (context) => ProfileDetailsScreen(),
    // Remove calendarScreen from here because it needs parameters
    iAmScreen: (context) => IAmScreen(),
    passionsScreen: (context) => PassionsScreen(),
    friendsScreen: (context) => FriendsScreen(),
    notificationScreen: (context) => NotificationScreen(),
    pricingScreen: (context) => PricingScreen(),
    mainScreen: (context) => MainScreen(),
    matchScreen: (context) => MatchScreen(),
    filtersTabContainerScreen: (context) => FiltersTabContainerScreen(),
    chatScreen: (context) => ChatScreen(),
    profileScreen: (context) => ProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case calendarScreen:
        final args = settings.arguments as Map<String, String>;
        return MaterialPageRoute(
          builder: (context) => CalendarScreen(
            firstName: args['firstName']!,
            lastName: args['lastName']!,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => ProfileDetailsScreen(),
        );
    }
  }
}
