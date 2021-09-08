import 'package:bookspell/shared/constants/appColors.dart';

import 'package:bookspell/shared/constants/appImages.dart';
import 'package:flutter/material.dart';

class FloatingActionMenu extends StatelessWidget {
  final String page;
  const FloatingActionMenu({Key? key, this.page = ''}) : super(key: key);

  String getImage() {
    if (page == 'search') return AppImages.searchBookSelected;

    return AppImages.searchBook;
  }

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
            padding: EdgeInsets.only(left: 4),
            child: Image.asset(getImage(), width: 35),
          ),
          tooltip: 'Busque livros',
        ),
      ),
    );
  }
}
