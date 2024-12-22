import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_note/core/utils/app_assets.dart';
import 'package:quick_note/core/utils/app_colors.dart';
import 'package:quick_note/features/home/presentation/views/widgets/custom_home_view_app_bar_background.dart';
import 'package:quick_note/features/home/presentation/views/widgets/custom_home_view_app_bar_title.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      title: const CustomHomeViewAppBarTitle(),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: SvgPicture.asset(
            AppAssets.menuIcon,
            height: 22.h,
            width: 22.w,
          ),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      expandedHeight: 150.h,
      flexibleSpace: const FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        stretchModes: [
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
          StretchMode.fadeTitle,
        ],
        background: CustomHomeViewAppBarBackground(),
      ),
    );
  }
}
