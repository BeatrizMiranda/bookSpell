import '/shared/constants/appColors.dart';
import '/shared/constants/appTextStyles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.content,
    required this.onPressed,
  }) : super(key: key);

  final String content;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                onPrimary: AppColors.smokeWhite,
                primary: AppColors.orangeLight,
                textStyle: AppTextStyles.subtitle,
              ),
              onPressed: onPressed,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(content),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
