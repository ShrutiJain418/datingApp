// ignore_for_file: prefer_const_constructors, prefer_null_aware_operators

import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';

class CalendarScreen extends StatelessWidget {
  final String firstName;
  final String lastName;
  CalendarScreen({Key? key, required this.firstName, required this.lastName})
      : super(key: key);

  List<DateTime?> selectedDatesFromCalendar1 = [];

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
                        image: AssetImage(ImageConstant.imgCalendar),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        height: SizeUtils.height,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent
                                  .withOpacity(0.4), // Adjust opacity as needed
                              Colors.grey[50]!,
                            ],
                          ),
                        ),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgThumbsUpOnprimary,
                              height: 12.v,
                              width: 27.h,
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 295.v)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.h, vertical: 48.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              fs.Svg(ImageConstant.imgGroup20),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text('Birthday'),
                                        _buildCalendarSection(context),
                                        SizedBox(height: 45.v),
                                        CustomElevatedButton(
                                            text: "Save",
                                            onPressed: () {
                                              onTapSave(context);
                                            })
                                      ])))
                        ]))))));
  }

  Widget _buildCalendarSection(BuildContext context) {
    return SizedBox(
        height: 297.v,
        width: 295.h,
        child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.single,
                firstDate: DateTime(DateTime.now().year - 30),
                lastDate: DateTime(DateTime.now().year + 30),
                selectedDayHighlightColor: Color(0XFFE94057),
                centerAlignModePicker: true,
                firstDayOfWeek: 0,
                controlsHeight: 17,
                selectedDayTextStyle: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontFamily: 'Sk-Modernist',
                    fontWeight: FontWeight.w700),
                controlsTextStyle: TextStyle(
                    color: theme.colorScheme.primary,
                    fontFamily: 'Sk-Modernist',
                    fontWeight: FontWeight.w400),
                dayTextStyle: TextStyle(
                    color: appTheme.black900,
                    fontFamily: 'Sk-Modernist',
                    fontWeight: FontWeight.w400),
                dayBorderRadius: BorderRadius.circular(21.5.h)),
            value: selectedDatesFromCalendar1,
            onValueChanged: (dates) {
              selectedDatesFromCalendar1 = dates;
            }));
  }

  void onTapSave(BuildContext context) {
    final selectedDate = selectedDatesFromCalendar1.isNotEmpty
        ? selectedDatesFromCalendar1.first
        : null;
    Navigator.pop(
      context,
      {
        'firstName': firstName,
        'lastName': lastName,
        'birthdate': selectedDate != null ? selectedDate.toString() : null,
      },
    );
  }
}
