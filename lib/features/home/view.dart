import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whispertales/core/styles/customs_color.dart';
import 'package:whispertales/core/styles/styles.dart';
import 'package:whispertales/features/home/widgets/gnerate_button.dart';
import 'package:whispertales/features/home/widgets/select_genere.dart';
import 'package:whispertales/features/home/widgets/set_creativty.dart';
import 'package:whispertales/features/home/widgets/story_length_widget.dart';
import 'package:whispertales/features/home/widgets/user_input_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomsColros.primaryColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(5.0.dg),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'WhisperTales',
                    style: AppTextStyles.font20SeconColor,
                  ),
                  SizedBox(
                    width: 130.w,
                  ),
                  SizedBox(
                    height: 25.h,
                    width: 40.w,
                    child: Image.asset(
                      'assets/images/home/language.png',
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Icon(
                    Icons.info,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              //generation length
              StoryLengthSelection(),
              // user input
              userInputText(),
              //creativty selection
              const SetCreativty(),

              //select genre
              const CategorySelection(),
              SizedBox(
                height: 10.h,
              ),
              gnerateButton()
            ],
          ),
        ),
      )),
    );
  }
}
