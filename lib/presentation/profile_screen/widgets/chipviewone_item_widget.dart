import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewoneItemWidget extends StatelessWidget {
  final String text;
  const ChipviewoneItemWidget({Key? key, required this.text})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 7.v,
        right: 10.h,
        bottom: 7.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.done_all,
            color: theme.colorScheme.primary,
          ),
          Text(
            text,
            style: TextStyle(
              color: theme.colorScheme.primary,
              fontSize: 14.fSize,
              fontFamily: 'Sk-Modernist',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgCheckmarkPrimary,
        height: 16.adaptSize,
        width: 16.adaptSize,
        margin: EdgeInsets.only(right: 2.h),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
      selectedColor: theme.colorScheme.onPrimary.withOpacity(1),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          5.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
