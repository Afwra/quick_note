import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quick_note/core/utils/supabase_constants.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SupaEmailAuth(
              onError: (error) => log('Error: $error'),
              onSignInComplete: (response) => log('Success: $response'),
              onSignUpComplete: (response) => log('Success: $response'),
              metadataFields: [
                MetaDataField(
                  prefixIcon: const Icon(Icons.person),
                  label: 'Username',
                  key: 'Display name',
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Please enter something';
                    }
                    return null;
                  },
                ),
              ],
            ),
            SupaSocialsAuth(
              socialProviders: const [
                OAuthProvider.google,
              ],
              colored: true,
              nativeGoogleAuthConfig: const NativeGoogleAuthConfig(
                webClientId: SupabaseConstants.webClientId,
              ),
              redirectUrl:
                  kIsWeb ? null : 'io.supabase.flutter://reset-callback/',
              onSuccess: (Session response) {
                log('Success: $response');
              },
              onError: (error) {
                log('Error: $error');
                // do something, for example: navigate("wait_for_email");
              },
            ),
          ],
        ),
      ),
    );
  }
}
