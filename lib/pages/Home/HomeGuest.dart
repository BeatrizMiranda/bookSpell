import 'package:bookspell/components/BooksCarousel/BooksCarousel.dart';
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
            SizedBox(height: 32),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Populares', style: AppTextStyles.subtitle),
                  BooksCarousel()
                ],
              ),
            ),
            Spacer(),
            CustomButton(
              content: 'Crie uma conta',
              onPressed: () => openLoginModal(context),
            ),
            SizedBox(height: 16),
            Text(
              'Para conseguir organizar suas leituras',
              style: AppTextStyles.body,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            Spacer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionMenu(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBarCustom(page: 'home'),
    );
  }
}
