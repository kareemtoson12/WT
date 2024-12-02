import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:whispertales/core/styles/customs_color.dart';
import 'package:whispertales/core/styles/styles.dart';

Widget gnerateButton(context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
        //Navigator.pushReplacementNamed(context, Routes.audioScreen);
      },
      child: Container(
        width: 200.w,
        height: 60.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.dg),
            color: CustomsColros.darkPurble),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Generate',
              style: AppTextStyles.font20GoogleFontEWhite,
            ),
            Image.asset(
              'assets/images/home/shining.png',
              scale: 14,
              color: Colors.white,
            )
          ],
        ),
      ),
    ),
  );
}
