import 'package:flutter/material.dart';
import 'package:pawan_s_application2/core/app_export.dart';

class GenderSelectionWidget extends StatefulWidget {
  @override
  _GenderSelectionWidgetState createState() => _GenderSelectionWidgetState();
}

class _GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  String _selectedOption = 'Girls';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.v,
      width: 295.h,
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedOption = 'Girls';
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: _selectedOption == 'Girls' ? Colors.pink : Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                'Girls',
                style: TextStyle(
                  color:
                      _selectedOption == 'Girls' ? Colors.white : Colors.black,
                  fontWeight: _selectedOption == 'Girls'
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.grey.shade200,
            width: 1,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedOption = 'Boys';
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: _selectedOption == 'Boys' ? Colors.pink : Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                'Boys',
                style: TextStyle(
                  color:
                      _selectedOption == 'Boys' ? Colors.white : Colors.black,
                  fontWeight: _selectedOption == 'Boys'
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
          VerticalDivider(
            color: Colors.grey.shade200,
            width: 1,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedOption = 'Both';
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: _selectedOption == 'Both' ? Colors.pink : Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Text(
                'Both',
                style: TextStyle(
                  color:
                      _selectedOption == 'Both' ? Colors.white : Colors.black,
                  fontWeight: _selectedOption == 'Both'
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
