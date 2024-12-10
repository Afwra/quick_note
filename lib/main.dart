import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_note/features/onBoarding/presentation/views/on_boarding_view.dart';

void main() {
  runApp(const QuickNote());
}

class QuickNote extends StatelessWidget {
  const QuickNote({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: _getDesignSize(),
      minTextAdapt: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: OnboardingView(),
        );
      },
    );
  }

  Size _getDesignSize() {
    if (Platform.isWindows) {
      return const Size(1920, 1080);
    } else {
      return const Size(440, 956);
    }
  }
}
