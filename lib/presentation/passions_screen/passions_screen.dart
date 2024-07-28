import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:pawan_s_application2/widgets/custom_bottom_bar.dart';
import 'package:pawan_s_application2/widgets/custom_elevated_button.dart';
import 'package:pawan_s_application2/presentation/passions_screen/widgets/passionschipview_item_widget.dart';

class PassionsScreen extends StatefulWidget {
  const PassionsScreen({Key? key}) : super(key: key);

  @override
  _PassionsScreenState createState() => _PassionsScreenState();
}

class _PassionsScreenState extends State<PassionsScreen> {
  List<Map<String, dynamic>> data = [
    {'text': 'Photography', 'icon': Icons.camera_alt_outlined},
    {'text': 'Shopping', 'icon': Icons.shopping_bag_outlined},
    {'text': 'Karaoke', 'icon': Icons.mic},
    {'text': 'Yoga', 'icon': Icons.spoke_outlined},
    {'text': 'Cooking', 'icon': Icons.food_bank_outlined},
    {'text': 'Tennis', 'icon': Icons.sports_tennis},
    {'text': 'Run', 'icon': Icons.run_circle_outlined},
    {'text': 'Swimming', 'icon': Icons.water},
    {'text': 'Art', 'icon': Icons.draw_outlined},
    {'text': 'Traveling', 'icon': Icons.travel_explore_outlined},
    {'text': 'Extreme', 'icon': Icons.diamond_outlined},
    {'text': 'Music', 'icon': Icons.music_note_outlined},
    {'text': 'Drink', 'icon': Icons.no_drinks},
    {'text': 'Video games', 'icon': Icons.gamepad_outlined},
  ];

  List<String> selectedPassions = [];
  final int maxSelection = 5;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 38.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your interests", style: theme.textTheme.displaySmall),
                SizedBox(height: 4.v),
                Container(
                  width: 285.h,
                  margin: EdgeInsets.only(right: 9.h),
                  child: Text(
                    "Select a few of your interests and let everyone know what you’re passionate about.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumBlack900_1
                        .copyWith(height: 1.50, fontSize: 12.0),
                  ),
                ),
                SizedBox(height: 29.v),
                _buildPassionsChipView(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildContinueButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 92.h,
      leading: Container(
        margin:
            EdgeInsets.only(left: 30.h, top: 10.v, bottom: 2.v, right: 20.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.pink,
          ),
          onPressed: () {
            onTapArrowLeft(context);
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassionsChipView(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: (data.length / 2).ceil(),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              children: [
                if (index * 2 < data.length)
                  Expanded(
                    child: PassionschipviewItemWidget(
                      text: data[index * 2]['text'],
                      icon: data[index * 2]['icon'],
                      isSelected:
                          selectedPassions.contains(data[index * 2]['text']),
                      selectedCount: selectedPassions.length,
                      maxSelection: maxSelection,
                      onSelected: (isSelected) {
                        setState(() {
                          if (isSelected) {
                            if (selectedPassions.length < maxSelection) {
                              selectedPassions.add(data[index * 2]['text']);
                            }
                          } else {
                            selectedPassions.remove(data[index * 2]['text']);
                          }
                        });
                      },
                    ),
                  ),
                if ((index * 2) + 1 < data.length) SizedBox(width: 20.h),
                if ((index * 2) + 1 < data.length)
                  Expanded(
                    child: PassionschipviewItemWidget(
                      text: data[(index * 2) + 1]['text'],
                      icon: data[(index * 2) + 1]['icon'],
                      isSelected: selectedPassions
                          .contains(data[(index * 2) + 1]['text']),
                      selectedCount: selectedPassions.length,
                      maxSelection: maxSelection,
                      onSelected: (isSelected) {
                        setState(() {
                          if (isSelected) {
                            if (selectedPassions.length < maxSelection) {
                              selectedPassions
                                  .add(data[(index * 2) + 1]['text']);
                            }
                          } else {
                            selectedPassions
                                .remove(data[(index * 2) + 1]['text']);
                          }
                        });
                      },
                    ),
                  ),
              ],
            ),
            SizedBox(height: 10.v),
          ],
        );
      },
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      margin: EdgeInsets.only(left: 40.h, right: 40.h, bottom: 48.v),
      onPressed: selectedPassions.isNotEmpty
          ? () {
              onTapContinueButton(context);
            }
          : null,
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the friendsScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => BottomNavBar(
                currentIndex: 0,
              )),
    );
  }
}
