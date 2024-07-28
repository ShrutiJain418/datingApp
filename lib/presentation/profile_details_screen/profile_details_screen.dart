import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:pawan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';
import 'package:pawan_s_application2/widgets/custom_icon_button.dart';
import 'package:pawan_s_application2/widgets/custom_outlined_button.dart';

class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({Key? key}) : super(key: key);

  @override
  _ProfileDetailsScreenState createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  DateTime? _selectedBirthdate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 36.v),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Profile details",
                      style: theme.textTheme.displaySmall,
                    ),
                  ),
                  SizedBox(height: 50.v),
                  SizedBox(
                    height: 106.v,
                    width: 101.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPhoto,
                          height: 99.adaptSize,
                          width: 99.adaptSize,
                          radius: BorderRadius.circular(25.h),
                          alignment: Alignment.topCenter,
                        ),
                        CustomIconButton(
                          height: 34.adaptSize,
                          width: 34.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          decoration: IconButtonStyleHelper.outlineOnPrimary,
                          alignment: Alignment.bottomRight,
                          child:
                              SvgPicture.asset('assets/images/img_camera.svg'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.v),
                  TextFormField(
                    controller: _firstNameController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'First Name is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15.v),
                  TextFormField(
                    controller: _lastNameController,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.v),
                  CustomOutlinedButton(
                    onPressed: () {
                      onTapBirthday(context);
                    },
                    leftIcon: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Icon(Icons.calendar_month),
                    ),
                    text: _selectedBirthdate != null
                        ? "DOB:  ${_selectedBirthdate!.toLocal().toString().split(' ')[0]}"
                        : "Choose birthday date",
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildConfirm(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(actions: [
      AppbarSubtitleOne(
        text: "Skip",
        margin: EdgeInsets.symmetric(horizontal: 40.h, vertical: 18.v),
      ),
    ]);
  }

  /// Section Widget
  Widget _buildConfirm(BuildContext context) {
    return CustomElevatedButton(
      text: "Confirm",
      margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
      onPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          onTapConfirm(context);
        }
      },
    );
  }

  /// Common widget
  Widget _buildInputTextNone(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return SizedBox(
      height: 64.v,
      width: 295.h,
      child: Stack(alignment: Alignment.topLeft, children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(19.h),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Text(
              dynamicText,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.black900),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: Text(
              dynamicText1,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.black900.withOpacity(0.4),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.
  void onTapBirthday(BuildContext context) async {
    final result = await Navigator.pushNamed(
      context,
      AppRoutes.calendarScreen,
      arguments: {
        'firstName': _firstNameController.text,
        'lastName': _lastNameController.text,
      },
    );

    // If the result contains first name and last name, update the controllers
    if (result is Map<String, dynamic>) {
      _firstNameController.text =
          result['firstName'] ?? _firstNameController.text;
      _lastNameController.text = result['lastName'] ?? _lastNameController.text;
      if (result['birthdate'] != null) {
        setState(() {
          _selectedBirthdate = DateTime.parse(result['birthdate']!);
        });
      }
    }
  }

  void onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iAmScreen);
  }
}
