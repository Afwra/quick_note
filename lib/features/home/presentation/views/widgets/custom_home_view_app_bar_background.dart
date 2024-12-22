import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_note/core/utils/app_assets.dart';
import 'package:quick_note/core/widgets/custom_text_field.dart';

class CustomHomeViewAppBarBackground extends StatelessWidget {
  const CustomHomeViewAppBarBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: SizedBox(
          height: 54.h,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Expanded(
                child: CustomTextField(
                  hintText: 'Search',
                  svgIconPath: AppAssets.searchIcon,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Container(
                padding: EdgeInsets.all(14.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                      color: Colors.white.withOpacity(0.2), width: 2),
                ),
                child: SvgPicture.asset(
                  AppAssets.gridIcon,
                  height: 22.h,
                  width: 22.w,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
