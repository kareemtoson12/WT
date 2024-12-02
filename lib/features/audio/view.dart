import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whispertales/core/styles/customs_color.dart';
import 'package:whispertales/core/styles/styles.dart';

class AudioScreen extends StatelessWidget {
  const AudioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomsColros.primaryColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(8.0).dg,
        child: Column(
          children: [
            SizedBox(
              height: 350.h,
              width: 500.w,
              child: Image.asset(
                'assets/images/audio/music.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'The little prince',
              style: AppTextStyles.font20GoogleFontEWhite,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.play_arrow,
                  color: CustomsColros.secondColor,
                  size: 50.h,
                ),
                Icon(
                  Icons.stop,
                  size: 50.h,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 90.h,
            ),
            TextButton(
                onPressed: () {
                  //  Navigator.pushNamed(context, Routes.questionScreen);
                },
                child: Container(
                  width: 350.w,
                  padding: EdgeInsets.all(10.dg),
                  decoration: BoxDecoration(
                    color: CustomsColros.secondColor,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Center(
                    child: Text(
                      'Done',
                      style: AppTextStyles.font20blackRegular,
                    ),
                  ),
                )),
          ],
        ),
      )),
    );
  }
}
