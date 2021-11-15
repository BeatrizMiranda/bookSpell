import 'package:bookspell/components/Carousel/Carousel.dart';
import 'package:bookspell/components/Menu/BottomAppBar.dart';
import 'package:bookspell/components/Menu/FloatingActionMenu.dart';

import 'package:bookspell/components/CustomButton/CustomButton.dart';
import 'package:bookspell/components/Header/Header.dart';
import 'package:bookspell/pages/AuthModal/LoginModal.dart';
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
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Header(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Populares', style: AppTextStyles.subtitle),
                  Carousel()
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              content: 'Crie uma conta',
              onPressed: () => openLoginModal(context),
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
      bottomNavigationBar: BottomAppBarCustom(page: 'home'),
    );
  }
}
