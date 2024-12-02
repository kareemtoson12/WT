import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whispertales/core/styles/styles.dart';

class SetCreativty extends StatefulWidget {
  const SetCreativty({super.key});

  @override
  _SetCreativtyState createState() => _SetCreativtyState();
}

class _SetCreativtyState extends State<SetCreativty> {
  double _sliderValue = 0; // Slider value to track the selected level

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.0.dg),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Standard',
                style: AppTextStyles.font20GoogleFontEWhite,
              ),
              Text(
                'Complex',
                style: AppTextStyles.font20GoogleFontEWhite,
              ),
              Text(
                'Creative',
                style: AppTextStyles.font20GoogleFontEWhite,
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Slider(
            value: _sliderValue,
            min: 0,
            max: 2,
            divisions:
                2, // This will create three steps: Standard, Complex, and Creative
            onChanged: (double value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
