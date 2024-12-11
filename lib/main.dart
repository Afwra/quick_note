import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quick_note/core/utils/supabase_constants.dart';
import 'package:quick_note/features/auth/presentation/views/auth_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: SupabaseConstants.projectUrl,
    anonKey: SupabaseConstants.anonKey,
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const QuickNote());
}

class QuickNote extends StatelessWidget {
  const QuickNote({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: _getDesignSize(),
      minTextAdapt: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: AuthView(),
        );
      },
    );
  }

  Size _getDesignSize() {
    if (Platform.isWindows) {
      return const Size(1920, 1080);
    } else {
      return const Size(440, 956);
    }
  }
}
