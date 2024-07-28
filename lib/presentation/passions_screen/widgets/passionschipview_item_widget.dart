import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';

class PassionschipviewItemWidget extends StatefulWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final Function(bool) onSelected;
  final int selectedCount;
  final int maxSelection;

  const PassionschipviewItemWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.isSelected,
    required this.onSelected,
    required this.selectedCount,
    required this.maxSelection,
  }) : super(key: key);

  @override
  _PassionschipviewItemWidgetState createState() =>
      _PassionschipviewItemWidgetState();
}

class _PassionschipviewItemWidgetState
    extends State<PassionschipviewItemWidget> {
  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 14.v,
        right: 5.h,
        bottom: 14.v,
        left: 5.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              widget.icon,
              color: widget.isSelected ? Colors.white : Colors.pink,
            ),
            SizedBox(width: 8.h), // Add spacing between icon and text
            Text(
              widget.text,
              style: TextStyle(
                color: widget.isSelected ? Colors.white : appTheme.black900,
                fontSize: 14.fSize,
                fontFamily: 'Sk-Modernist',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      selected: widget.isSelected,
      backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
      selectedColor: Colors.pink, // Change selected color to pink
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.gray200,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          15.h,
        ),
      ),
      onSelected: (value) {
        if (!widget.isSelected && widget.selectedCount >= widget.maxSelection) {
          // Do nothing if max selection limit is reached
          return;
        }
        widget.onSelected(value);
      },
    );
  }
}
