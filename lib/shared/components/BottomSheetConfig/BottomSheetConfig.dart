import 'package:bookspell/shared/theme/themeChanger.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConfigBottomSheet extends StatefulWidget {
  ConfigBottomSheet({Key? key}) : super(key: key);

  @override
  _ConfigBottomSheetState createState() => _ConfigBottomSheetState();
}

class _ConfigBottomSheetState extends State<ConfigBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => showBottomConfig(context),
      child: Icon(Icons.settings),
    );
  }
}

void showBottomConfig(BuildContext context) {
  var themeChanger = Provider.of<ThemeChanger>(context, listen: false);

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
                Switch(
                  value: themeChanger.isDarkMode(),
                  onChanged: themeChanger.toogleTheme,
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
