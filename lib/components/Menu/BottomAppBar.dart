import 'package:bookspell/components/IconWithLabel/IconWithLabel.dart';
import 'package:bookspell/shared/constants/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class BottomAppBarCustom extends StatelessWidget {
  final String page;

  const BottomAppBarCustom({Key? key, this.page = ''}) : super(key: key);

  Color getHomeColor() {
    if (page == 'home') return AppColors.orangeLight;
    return AppColors.white;
  }

  Color getListColor() {
    if (page == 'list') return AppColors.orangeLight;
    return AppColors.white;
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: AppColors.darkerBg,
      child: Row(
        children: <Widget>[
          IconWithLabel(
            icon: Icon(FeatherIcons.home, size: 28, color: getHomeColor()),
            label: 'Home',
            onTap: () {},
          ),
          Spacer(),
          IconWithLabel(
            icon: Icon(FeatherIcons.list, size: 28, color: getListColor()),
            label: 'Listas',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
