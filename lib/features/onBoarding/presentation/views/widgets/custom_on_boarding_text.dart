import 'package:flutter/material.dart';
import 'package:quick_note/core/utils/app_text_styles.dart';

class CustomOnBoardingText extends StatefulWidget {
  const CustomOnBoardingText({
    super.key,
  });

  @override
  State<CustomOnBoardingText> createState() => _CustomOnBoardingTextState();
}

class _CustomOnBoardingTextState extends State<CustomOnBoardingText>
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
      begin: const Offset(1, 0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: offset,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          'Welcome To QuickNote',
          style: AppTextStyles.poppinsMedium26,
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
