// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pawan_s_application2/presentation/profile/edit_profile_widget.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.pink,
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTextFieldWithIcon(
                labelText: 'Full Name*',
                width: double.infinity,
                hintText: 'Adam Smith',
              ),
              CustomTextFieldWithIcon(
                labelText: 'Email*',
                width: double.infinity,
                hintText: 'adam.smith@yourdomain.com',
                icon: Icons.email,
              ),
              CustomTextFieldWithIcon(
                labelText: 'Phone Number*',
                width: double.infinity,
                hintText: '+919999999999',
                icon: Icons.phone,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomTextFieldWithIcon(
                      labelText: 'Gender*',
                      width: double.infinity,
                      hintText: 'Male',
                      icon: Icons.arrow_drop_down,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: CustomTextFieldWithIcon(
                      labelText: 'Age*',
                      width: double.infinity,
                      hintText: '24',
                      icon: Icons.arrow_drop_down,
                    ),
                  ),
                ],
              ),
              CustomTextFieldWithIcon(
                labelText: 'About',
                width: double.infinity,
                // minlines: null,
                // maxlines: null,
                hintText:
                    'Egestas eu venenatis phasellus eros vitae ultricies orci vel magnis facilisis, ullamcorper pellentesque et luctus tincidunt cubilia dictum natoque parturient purus, aenean fusce sociosqu etiam mus sodales tempor vehicula ornare.',
              ),
              CustomTextFieldWithIcon(
                labelText: 'Interest*',
                width: double.infinity,
                hintText: 'Art, Music, Dance,Design, Fashion,....',
                icon: Icons.edit,
              ),
              CustomTextFieldWithIcon(
                labelText: 'Address',
                width: double.infinity,
                hintText: 'Los Angles',
                icon: Icons.location_on_outlined,
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 50.0,
                width: 400.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink, // Background color
                    foregroundColor: Colors.white, // Text color
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0), // Button padding
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Button border radius
                    ),
                  ),
                  child: Text(
                    'Save Changes',
                    style: TextStyle(fontSize: 15.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
