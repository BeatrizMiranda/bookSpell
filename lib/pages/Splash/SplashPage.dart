import '/shared/auth/authController.dart';
import '/shared/theme/appColors.dart';
import '/shared/theme/appImages.dart';
import '/shared/theme/appTextStyles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.currentUser(context);

    return Scaffold(
      backgroundColor: AppColors.darkerBg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset(AppImages.logoSplash)),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'BookSpell',
              style: AppTextStyles.splashHeading,
            ),
          ),
        ],
      ),
    );
  }
}
