import 'package:flutter/material.dart';
import 'package:quick_note/features/onBoarding/presentation/views/widgets/on_boarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}
