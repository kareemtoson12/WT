import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:whispertales/core/routing/app_routes.dart';

import 'package:whispertales/core/styles/customs_color.dart';
import 'package:whispertales/core/styles/styles.dart';
import 'package:whispertales/features/onboarding/logic.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  OnboardingLogic onboardingLogic = OnboardingLogic();

  void _onSkipPressed() {
    setState(() {
      // Go to the next page or reset if it's the last page
      if (currentPage < onboardingLogic.listOfImages.length - 1) {
        currentPage++;
        _pageController.animateToPage(
          currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      } else {
        currentPage = 0;
        _pageController.animateToPage(
          currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomsColros.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 5.dg),
                  child: SizedBox(
                    height: 600.h,
                    width: 300.w,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: onboardingLogic.listOfImages.length,
                      onPageChanged: (index) {
                        setState(() {
                          currentPage = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(
                              onboardingLogic.listOfImages[index],
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              onboardingLogic.listOfQoutes[index],
                              style: AppTextStyles.font20SeconColor,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              SmoothPageIndicator(
                controller: _pageController,
                count: onboardingLogic.listOfImages.length,
                effect: WormEffect(
                  dotHeight: 8.h,
                  dotWidth: 14.w,
                  type: WormType.thinUnderground,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, Routes.home);
                      },
                      child: Container(
                        height: 50.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: CustomsColros.secondColor),
                        child: Center(
                          child: Text(
                            'skip',
                            style: AppTextStyles.font20blackRegular,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
