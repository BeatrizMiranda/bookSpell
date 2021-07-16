import 'package:bookspell/shared/components/BottomSheetConfig/BottomSheetConfig.dart';
import 'package:flutter/material.dart';

class HomeGuest extends StatefulWidget {
  const HomeGuest({Key? key}) : super(key: key);

  @override
  _HomeGuestState createState() => _HomeGuestState();
}

class _HomeGuestState extends State<HomeGuest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: ConfigBottomSheet()),
    );
  }
}
