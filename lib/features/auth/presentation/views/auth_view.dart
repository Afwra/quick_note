import 'package:flutter/material.dart';
import 'package:quick_note/features/auth/presentation/views/widgets/auth_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: AuthViewBody(),
        ),
      ),
    );
  }
}
