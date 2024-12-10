import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_note/core/utils/app_colors.dart';

class AppTextStyles {
  static TextStyle poppinsMedium26 = TextStyle(
    color: const Color(0xff003675),
    fontSize: 26.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle poppinsMedium22 = TextStyle(
    color: const Color(0xff003675),
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle poppinsMedium16 = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle poppinsMedium17 = TextStyle(
    color: Colors.black,
    fontSize: 17.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle poppinsSemiBold22 = TextStyle(
    color: Colors.white,
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle poppinsSemiBold10 = TextStyle(
    color: Colors.black,
    fontSize: 10.5.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle poppinsRegular18 = TextStyle(
    color: Colors.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle poppinsRegular10 = TextStyle(
    color: AppColors.noteTextColor,
    fontSize: 10.5.sp,
    fontWeight: FontWeight.w400,
  );
}
