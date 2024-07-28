import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';
import 'package:pawan_s_application2/presentation/chat_screen/chat_screen.dart';

class UserprofileItemWidget extends StatelessWidget {
  final String profileImage;
  final String name;
  final String lastActivity;
  final String status;
  final int? unreadMessages;

  const UserprofileItemWidget({
    Key? key,
    required this.profileImage,
    required this.name,
    required this.lastActivity,
    required this.status,
    this.unreadMessages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreen()),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: profileImage,
              height: 48.adaptSize,
              width: 48.adaptSize,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 7.v,
                  bottom: 1.v,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: CustomTextStyles.titleSmallBlack900,
                        ),
                        Text(
                          lastActivity,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                    SizedBox(height: 1.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            status,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        if (unreadMessages != null)
                          Container(
                            width: 20.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10,
                            ),
                            child: Text(
                              unreadMessages.toString(),
                              style: CustomTextStyles.labelLargeOnPrimary,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
