import 'package:flutter/material.dart';
import 'package:marketi_app/core/resources/extension_manager.dart';
import 'package:marketi_app/core/resources/styles_manager.dart';

import '../../../../../core/resources/app_strings.dart';
import '../signup_screen.dart';

//Todo: custom.attributes
class AuthFooterRowText extends StatelessWidget {
  const AuthFooterRowText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(SignupScreen()),
      child: Text.rich(
        TextSpan(
          text: AppStrings.loginPrompt,
          style: StylesManager.font12NavyRegular,
          children: [
            TextSpan(
              text: AppStrings.login_,
              style: StylesManager.font12LightBlue100Regular,
            )
          ],
        ),
      ),
    );
  }
}
