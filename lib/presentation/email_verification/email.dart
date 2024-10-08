// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, sort_child_properties_last

import 'dart:async';

import 'package:flutter/material.dart';

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:pawan_s_application2/presentation/login_screen/loginscreen.dart';

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({Key? key}) : super(key: key);

  @override
  State<EmailVerificationPage> createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage> {
  bool isEmailVerified = false;
  bool canResendEmail = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    //  isEmailVerified = FirebaseAuth.instance.currentUser?.emailVerified ?? false;

    //   if (!isEmailVerified) {
    //     sendVerificationEmail();

    //     timer = Timer.periodic(Duration(seconds: 10), (timer) {
    //       checkEmailVerified();
    //     });
    //   }
    // }

    @override
    void dispose() {
      timer?.cancel();
      super.dispose();
    }

    // Future<void> checkEmailVerified() async {
    //   await FirebaseAuth.instance.currentUser!.reload();

    //   setState(() {
    //     isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    //   });

    //   if (isEmailVerified) {
    //     timer?.cancel();
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(builder: (context) => LoginScreen()),
    //     );
    //   }
    // }

    // Future<void> sendVerificationEmail() async {
    //   try {
    //     final user = FirebaseAuth.instance.currentUser!;
    //     await user.sendEmailVerification();

    //     setState(() {
    //       canResendEmail = false;
    //     });

    //     await Future.delayed(Duration(seconds: 10));

    //     setState(() {
    //       canResendEmail = true;
    //     });
    //   } catch (e) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         content: Text(e.toString()),
    //       ),
    //     );
    //   }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              IconButton(
                alignment: Alignment.topLeft,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Email Verification',
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.pink),
              ),
              SizedBox(height: 15.0),
              Text(
                'We have sent a verification email to your registered account !!!',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w100),
              ),
              SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {
                  // canResendEmail ? sendVerificationEmail() : null;
                },
                child: Text(
                  'Resend Email',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, // Button color
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 5, // Add shadow
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // FirebaseAuth.instance.signOut();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  elevation: 5, // Add shadow
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
