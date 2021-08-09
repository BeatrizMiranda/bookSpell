import 'package:bookspell/shared/constants/appColors.dart';

import 'package:bookspell/shared/constants/appImages.dart';
import 'package:flutter/material.dart';

class FloatingActionMenu extends StatelessWidget {
  const FloatingActionMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.orangeLight, width: 3),
        shape: BoxShape.circle,
      ),
      height: 75.0,
      width: 75.0,
      child: FittedBox(
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.white,
          child: Padding(
            padding: EdgeInsets.only(bottom: 3, left: 2),
            child: Image.asset(AppImages.iconSearchBook, width: 45),
          ),
          tooltip: 'Busque livros',
        ),
      ),
    );
  }
}
