// ignore_for_file: prefer_const_constructors

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:pawan_s_application2/presentation/friends_screen/friends_screen.dart';
import 'package:pawan_s_application2/presentation/login_screen/loginscreen.dart';
import 'package:pawan_s_application2/presentation/notification_screen/notification_screen.dart';
import 'package:pawan_s_application2/presentation/profile/edit_profile.dart';
import 'package:pawan_s_application2/presentation/profile/prof_widget.dart';

class ProfileInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ), // Profile icon
                  ),
                  SizedBox(width: 20.0),
                  Text(
                    'Profile',
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                  // Spacer(),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(15.0),
                  //     color: Colors.pink[50], // Customize the color as needed
                  //   ),
                  //   padding: EdgeInsets.all(2.0),
                  //   child: IconButton(
                  //     icon: Icon(
                  //       Icons.edit,
                  //       color: Colors.pink,
                  //     ),
                  //     onPressed: () {
                  //       // Add functionality for editing profile
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => EditProfileScreen()));
                  //     },
                  //   ),
                  // ),
                  // SizedBox(width: 8.0),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(15.0),
                  //     color: Colors.pink[50],
                  //   ),
                  //   padding: EdgeInsets.all(2.0),
                  //   child: IconButton(
                  //     icon: Icon(
                  //       Icons.list,
                  //       color: Colors.pink,
                  //     ),
                  //     onPressed: () {
                  //       // Add functionality for list icon
                  //     },
                  //   ),
                  // ),
                ],
              ),
              SizedBox(height: 20.0),
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                    radius: 48.0,
                    backgroundImage:
                        AssetImage('assets/images/img_photo_14.png')),
              ),
              SizedBox(height: 10.0),
              Text(
                'Elizabeth',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15.0),
              Divider(
                color: Colors.grey.shade200,
                height: 1.0,
                thickness: 1.0,
              ),
              SizedBox(height: 15.0),
              CustomWidget(
                firstIcon: Icons.person,
                text: 'Edit Profile',
                secondIcon: Icons.arrow_forward_ios_outlined,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfileScreen()));
                },
              ),
              CustomWidget(
                firstIcon: Icons.notifications,
                text: 'Notification',
                secondIcon: Icons.arrow_forward_ios_outlined,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()));
                },
              ),
              CustomWidget(
                  firstIcon: Icons.security,
                  text: 'Security',
                  secondIcon: Icons.arrow_forward_ios_outlined),
              // CustomWidget(
              //   firstIcon: Icons.dark_mode,
              //   text: 'Dark Mode',
              //   secondIcon: Icons.arrow_forward_ios_outlined,
              //   // switchValue: _darkModeEnabled,
              //   // onSwitchChanged: (value) {
              //   //   setState(() {
              //   //     _darkModeEnabled = value;
              //   //   });
              //   // },
              // ),
              CustomWidget(
                firstIcon: Icons.insert_invitation_rounded,
                text: 'Invite Friends',
                secondIcon: Icons.arrow_forward_ios_outlined,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FriendsScreen()));
                },
              ),
              CustomWidget(
                firstIcon: Icons.logout,
                text: 'Log Out',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
