import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_note/core/utils/app_assets.dart';

class CustomOnBoardingImage extends StatefulWidget {
  const CustomOnBoardingImage({
    super.key,
  });

  @override
  State<CustomOnBoardingImage> createState() => _CustomOnBoardingImageState();
}

class _CustomOnBoardingImageState extends State<CustomOnBoardingImage>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> offset;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    offset = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: offset,
      child: Image.asset(
        AppAssets.onBoardingImage,
        width: 340.w,
        height: 200.h,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
