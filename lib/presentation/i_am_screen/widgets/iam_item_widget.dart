import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';

class IamItemWidget extends StatefulWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final Function(bool) onTap;

  const IamItemWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  _IamItemWidgetState createState() => _IamItemWidgetState();
}

class _IamItemWidgetState extends State<IamItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap(!widget.isSelected);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 17.v,
        ),
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.pink : null,
          border: Border.all(color: Colors.grey[200]!),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(
                widget.text,
                style: TextStyle(
                  fontSize: 16,
                  color: widget.isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: widget.isSelected
                      ? Colors.white
                      : Colors.black, // Border color
                  width: 1.0, // Border width
                ),
              ),
              child: Icon(
                widget.icon,
                size: 16.adaptSize,
                color: widget.isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
