import 'package:bookspell/components/IconWithLabel/IconWithLabel.dart';
import 'package:bookspell/shared/constants/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class BottomAppBarCustom extends StatelessWidget {
  const BottomAppBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: AppColors.darkerBg,
      child: Row(
        children: <Widget>[
          IconWithLabel(
            icon: Icon(FeatherIcons.home, color: AppColors.white),
            label: 'Home',
            onTap: () {},
          ),
          Spacer(),
          IconWithLabel(
            icon: Icon(FeatherIcons.list, color: AppColors.white),
            label: 'Listas',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
