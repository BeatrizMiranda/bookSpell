import 'package:bookspell/components/Menu/BottomAppBar.dart';
import 'package:bookspell/components/Menu/FloatingActionMenu.dart';

import 'package:bookspell/components/CustomButton/CustomButton.dart';
import 'package:bookspell/components/Header/Header.dart';
import 'package:bookspell/shared/constants/appTextStyles.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Header(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomButton(
              content: 'Crie uma conta',
              onPressed: () {},
            ),
            SizedBox(height: 20),
            Text(
              'Para conseguir organizar suas leituras',
              style: AppTextStyles.corpo,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionMenu(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBarCustom(),
    );
  }
}
