import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_note/core/utils/app_colors.dart';
import 'package:quick_note/core/utils/app_text_styles.dart';

class CustomOnBoardingButton extends StatelessWidget {
  const CustomOnBoardingButton({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          )),
      child: Text(
        text,
        style: AppTextStyles.poppinsMedium16,
      ),
    );
  }
}
