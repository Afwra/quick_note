import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_note/core/utils/app_assets.dart';
import 'package:quick_note/features/onBoarding/presentation/views/widgets/custom_on_boarding_button.dart';
import 'package:quick_note/features/onBoarding/presentation/views/widgets/custom_on_boarding_image.dart';
import 'package:quick_note/features/onBoarding/presentation/views/widgets/custom_on_boarding_text.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppAssets.logo,
            height: 122.h,
            width: 122.w,
          ),
          const SizedBox(height: 30),
          const CustomOnBoardingText(),
          const SizedBox(
            height: 30,
          ),
          const CustomOnBoardingImage(),
          const SizedBox(
            height: 40,
          ),
          CustomOnBoardingButton(
            text: 'Get Started',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
