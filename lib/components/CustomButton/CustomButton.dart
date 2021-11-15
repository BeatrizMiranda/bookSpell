import 'package:bookspell/shared/constants/appColors.dart';
import 'package:bookspell/shared/constants/appTextStyles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.content,
    required this.onPressed,
    this.noPadding = false,
  }) : super(key: key);

  final String content;
  final bool noPadding;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: noPadding ? null : EdgeInsets.symmetric(horizontal: 10),
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
                padding: EdgeInsets.all(14),
                child: Text(content),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
