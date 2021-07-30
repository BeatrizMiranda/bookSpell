import 'package:flutter/material.dart';

class IconWithLabel extends StatelessWidget {
  final Icon icon;
  final String label;
  final Color labelColor;
  final VoidCallback onTap;

  const IconWithLabel({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.labelColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 80,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: onTap,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                icon,
                SizedBox(height: 5),
                Text(label, style: TextStyle(color: labelColor))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
