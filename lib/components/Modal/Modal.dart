import 'package:bookspell/shared/constants/appTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ModalComponent extends StatelessWidget {
  const ModalComponent({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.form,
    required this.link,
    required this.button,
    this.backLink,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Widget form;
  final Widget link;
  final Widget button;
  final Widget? backLink;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      insetPadding: EdgeInsets.all(20),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(FeatherIcons.x, size: 30),
          ),
        ],
      ),
      titlePadding: EdgeInsets.only(top: 10, right: 10),
      contentPadding: EdgeInsets.fromLTRB(25, 0, 25, 25),
      children: [
        Column(
          children: [
            if (backLink != null) Wrap(children: [backLink as Widget]),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text(title, style: AppTextStyles.title)],
            ),
            SizedBox(height: 25),
            Text(subTitle, style: AppTextStyles.body),
            SizedBox(height: 25),
            form,
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [link],
            ),
            SizedBox(height: 25),
            button,
          ],
        )
      ],
    );
  }
}
