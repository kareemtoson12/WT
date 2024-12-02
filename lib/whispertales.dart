import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whispertales/core/routing/app_routes.dart';
import 'package:whispertales/core/routing/routes.dart';

class WhisperTales extends StatelessWidget {
  final AppRoutes appRouter;
  const WhisperTales({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhisperTales',
        onGenerateRoute: appRouter.gnerateRoute,
        initialRoute: Routes.naivBar,
      ),
    );
  }
}
