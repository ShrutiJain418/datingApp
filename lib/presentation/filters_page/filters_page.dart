// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/presentation/i_am_screen/widgets/gender_selection_widget.dart';
import 'package:pawan_s_application2/widgets/custom_bottom_bar.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class FiltersPage extends StatefulWidget {
  const FiltersPage({Key? key})
      : super(
          key: key,
        );

  @override
  FiltersPageState createState() => FiltersPageState();
}

class FiltersPageState extends State<FiltersPage>
    with AutomaticKeepAliveClientMixin<FiltersPage> {
  @override
  bool get wantKeepAlive => true;
  TextEditingController _locationController = TextEditingController();
  double _startAge = 18;
  double _endAge = 28;
  double _distanceStart = 0;
  double _distanceEnd = 100;
  @override
  void dispose() {
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup200,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: SizeUtils.height,
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent.withOpacity(0.4),
                  Colors.grey[50]!,
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 500,
                width: double.maxFinite,

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                // decoration: AppDecoration.fillOnPrimary.copyWith(
                //   image: DecorationImage(
                //     image: AssetImage(
                //       ImageConstant.imgGroup200,
                //     ),
                //     fit: BoxFit.cover,
                //   ),
                //),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 32.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.h),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                  child: Text(
                                    'Filters',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                // SizedBox(
                                //   width: 50.0,
                                // ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Clear',
                                      style: TextStyle(color: Colors.pink),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Interested in',
                                  style: CustomTextStyles.titleMediumBlack900_1,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            GenderSelectionWidget(),
                            SizedBox(
                              height: 20.0,
                            ),
                            _buildInputTextNone(context),
                            SizedBox(height: 34.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Distance",
                                  style: CustomTextStyles.titleMediumBlack900_1,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 2.v),
                                  child: Text(
                                    //"${_startValue.toStringAsFixed(0)}-
                                    "${_distanceEnd.toStringAsFixed(0)}km",
                                    style:
                                        CustomTextStyles.bodyMediumBlack900_1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.v),
                            SliderTheme(
                              data: SliderThemeData(
                                trackShape: RoundedRectSliderTrackShape(),
                                activeTrackColor: theme.colorScheme.primary,
                                inactiveTrackColor: appTheme.gray200,
                                thumbColor: theme.colorScheme.primary,
                                thumbShape: RoundSliderThumbShape(),
                              ),
                              child: RangeSlider(
                                values:
                                    RangeValues(_distanceStart, _distanceEnd),
                                min: 0.0,
                                max: 300.0,
                                onChanged: (RangeValues values) {
                                  setState(() {
                                    _distanceStart = values.start;
                                    _distanceEnd = values.end;
                                  });
                                },
                              ),
                            ),
                            SizedBox(height: 35.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Age",
                                  style: CustomTextStyles.titleMediumBlack900_1,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 2.v),
                                  child: Text(
                                    //"${_startValue.toStringAsFixed(0)}-
                                    "${_endAge.toStringAsFixed(0)}",
                                    style:
                                        CustomTextStyles.bodyMediumBlack900_1,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 18.v),
                            SliderTheme(
                              data: SliderThemeData(
                                trackShape: RoundedRectSliderTrackShape(),
                                activeTrackColor: theme.colorScheme.primary,
                                inactiveTrackColor: appTheme.gray200,
                                thumbColor: theme.colorScheme.primary,
                                thumbShape: RoundSliderThumbShape(),
                              ),
                              child: RangeSlider(
                                values: RangeValues(_startAge, _endAge),
                                min: 18,
                                max: 65,
                                onChanged: (RangeValues values) {
                                  setState(() {
                                    _startAge = values.start;
                                    _endAge = values.end;
                                  });
                                },
                              ),
                            ),
                            SizedBox(height: 40.v),
                            CustomElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomNavBar(
                                            currentIndex: 0,
                                          )),
                                );
                              },
                              text: "Continue",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputTextNone(BuildContext context) {
    return SizedBox(
      height: 64.v,
      width: 295.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 6.v),
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlineGray200.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      controller: _locationController,
                      style: theme.textTheme.bodyMedium,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        //hintText: 'Location',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintStyle: theme.textTheme.bodyMedium != null
                            ? theme.textTheme.bodyMedium!
                                .copyWith(color: Colors.grey)
                            : TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    size: 24.adaptSize,
                    color: Colors.pink,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30.h),
              child: Text(
                "Location",
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
