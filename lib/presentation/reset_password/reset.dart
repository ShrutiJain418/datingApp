// ignore_for_file: prefer_const_constructors

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pawan_s_application2/presentation/login_screen/loginscreen.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final formkey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
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
                  )),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Reset Password',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty && value.length < 6) {
                    return 'Enter valid password';
                  }
                  return null;
                },
                controller: passwordController,
                textInputAction: TextInputAction.done,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "New password",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: confirmPasswordController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty && value.length < 6) {
                    return 'Enter valid password';
                  }
                  if (value != passwordController.text) {
                    return 'Not match';
                  }
                  return null;
                },
                textInputAction: TextInputAction.done,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Confirm password",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    //  _resetPassword();
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => LoginPage()),
                    // );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    constraints: BoxConstraints(minWidth: 88, minHeight: 44),
                    alignment: Alignment.center,
                    child: Text(
                      'Reset Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
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

  // void _resetPassword() {
  //   // Validate the form
  //   if (formkey.currentState!.validate()) {
  //     User? user = FirebaseAuth.instance.currentUser;
  //     String newPassword = passwordController.text;

  //     user?.updatePassword(newPassword).then((_) {
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(builder: (context) => LoginScreen()),
  //       );
  //     }).catchError((error) {
  //       print("Failed to update password: $error");

  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text("Failed to update password. Please try again."),
  //         ),
  //       );
  //     });
  //   }
  // }
}
