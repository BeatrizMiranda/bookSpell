import 'package:bookspell/shared/theme/appColors.dart';
import 'package:bookspell/shared/theme/appImages.dart';
import 'package:bookspell/shared/theme/appTextStyles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    // Navigator.pushReplacementNamed(context, "/home");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
