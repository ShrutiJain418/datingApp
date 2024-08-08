//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:pawan_s_application2/mongo/mongodb.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  // await Firebase.initializeApp();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'pawan_s_application2',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.onboardingOneScreen,
          onGenerateRoute: AppRoutes.generateRoute,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
