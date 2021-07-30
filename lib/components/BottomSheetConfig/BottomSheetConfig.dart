import 'package:bookspell/shared/constants/appTextStyles.dart';

import '/shared/theme/themeChanger.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ConfigBottomSheet extends StatefulWidget {
  ConfigBottomSheet({Key? key}) : super(key: key);

  @override
  _ConfigBottomSheetState createState() => _ConfigBottomSheetState();
}

class _ConfigBottomSheetState extends State<ConfigBottomSheet> {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return IconButton(
      icon: Icon(FeatherIcons.settings),
      onPressed: () => showBottomConfig(context, _themeChanger),
    );
  }
}

void showBottomConfig(BuildContext context, ThemeChanger themeChanger) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return BottomSheet(
        onClosing: () {},
        builder: (ctx) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(FeatherIcons.x, size: 30),
                  ),
                ),
                Text('Configurações', style: AppTextStyles.subtitleWhite),
                Switch(
                  value: themeChanger.isDarkMode(),
                  onChanged: themeChanger.toogleTheme,
                )
              ],
            ),
          );
        },
      );
    },
  );
}
