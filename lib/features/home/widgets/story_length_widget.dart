import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whispertales/core/styles/customs_color.dart';

class StoryLengthSelection extends StatefulWidget {
  @override
  _StoryLengthSelectionState createState() => _StoryLengthSelectionState();
}

class _StoryLengthSelectionState extends State<StoryLengthSelection> {
  String? selectedLength; // To track the selected length

  Widget storylengthWidget(String length) {
    bool isSelected =
        length == selectedLength; // Check if the widget is selected
    return Padding(
      padding: EdgeInsets.all(8.0.dg),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedLength = length; // Update the selected length
          });
        },
        child: Container(
          height: 40.h,
          width: 100.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: isSelected ? Colors.white : CustomsColros.secondColor),
          child: Center(
            child: Text(
              length,
              style: const TextStyle(
                color: Colors.black, // Change text color if selected
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: storylengthWidget('Short')),
        Expanded(child: storylengthWidget('Medium')),
        Expanded(child: storylengthWidget('Long')),
      ],
    );
  }
}
