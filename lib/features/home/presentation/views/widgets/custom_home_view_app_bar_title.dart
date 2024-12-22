import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_note/core/utils/app_assets.dart';
import 'package:quick_note/core/utils/app_text_styles.dart';

class CustomHomeViewAppBarTitle extends StatelessWidget {
  const CustomHomeViewAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppAssets.appbarLogo,
          height: 44.h,
          width: 44.w,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          'Quick Note',
          style: AppTextStyles.poppinsSemiBold22,
        ),
      ],
    );
  }
}
