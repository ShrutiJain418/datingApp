// ignore_for_file: prefer_const_constructors

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/presentation/main_screen/main_screen.dart';
import 'package:pawan_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:pawan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:pawan_s_application2/widgets/custom_bottom_bar.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';
import 'package:permission_handler/permission_handler.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  _FriendsScreenState createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  List<Contact> _contacts = [];
  bool _isContactsFetched = false;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 92.0,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BottomNavBar(
                            currentIndex: 0,
                          )),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.pink, fontSize: 16.0),
                ),
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 55.h, top: 69.v, right: 55.h),
          child: _isLoading ? _buildLoadingIndicator() : _buildContent(),
        ),
        bottomNavigationBar:
            !_isContactsFetched ? _buildAccessToAContactList(context) : null,
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _buildContent() {
    return _isContactsFetched ? _buildContactsList() : _buildInitialContent();
  }

  Widget _buildInitialContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPeople,
          height: 240.adaptSize,
          width: 240.adaptSize,
        ),
        SizedBox(height: 69.v),
        Text(
          "Search friend’s",
          style: CustomTextStyles.headlineSmallBold,
        ),
        SizedBox(height: 14.v),
        SizedBox(
          width: 264.h,
          child: Text(
            "You can find friends from your contact\nlists to connect...",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMediumBlack900_1.copyWith(height: 1.50),
          ),
        ),
        SizedBox(height: 5.v),
      ],
    );
  }

  Widget _buildContactsList() {
    return _contacts.isEmpty
        ? Center(child: Text("No contacts found"))
        : ListView.builder(
            itemCount: _contacts.length,
            itemBuilder: (context, index) {
              final contact = _contacts[index];
              final displayName = contact.displayName ?? '';
              final phoneNumber = contact.phones!.isNotEmpty
                  ? contact.phones?.first.value ?? ''
                  : '';
              return ListTile(
                title: Text(displayName),
                subtitle: Text(phoneNumber),
                onTap: () {
                  onTapAccessToAContactList(context);
                },
              );
            },
          );
  }

  Future<void> requestContactsPermission() async {
    setState(() {
      _isLoading = true;
    });
    var status = await Permission.contacts.status;
    if (!status.isGranted) {
      status = await Permission.contacts.request();
    }
    if (status.isGranted) {
      // Permission granted, proceed with accessing contacts
      await _fetchContacts();
    } else {
      // Permission denied, handle accordingly (e.g., show an error message)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Permission to access contacts was denied.')),
      );
    }
    setState(() {
      _isLoading = false;
    });
  }

  Future<void> _fetchContacts() async {
    try {
      Iterable<Contact>? contacts =
          await ContactsService.getContacts(withThumbnails: false);
      setState(() {
        _contacts = contacts.toList();
        _isContactsFetched = true;
      });
    } catch (e) {
      print("Error accessing contacts: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error accessing contacts: $e')),
      );
    }
  }

  Widget _buildAccessToAContactList(BuildContext context) {
    return CustomElevatedButton(
      text: "Access to a contact list",
      margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
      onPressed: () async {
        await requestContactsPermission();
      },
    );
  }

  /// Navigates to the notificationScreen when the action is triggered.
  void onTapAccessToAContactList(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationScreen);
  }
}

// PreferredSizeWidget _buildAppBar(BuildContext context) {
//   return CustomAppBar(
//     leadingWidth: 92.h,
//     actions: [
//       GestureDetector(
//         onTap: () {
//           Navigator.pushReplacement(
//             context,
//             MaterialPageRoute(builder: (context) => MainScreen()),
//           );
//         },
//         child: AppbarSubtitleOne(
//           text: "Skip",
//           margin: EdgeInsets.fromLTRB(40.h, 18.v, 35.h, 17.v),
//         ),
//       ),
//     ],
//   );
// }
