import 'package:bookspell/components/BottomSheetConfig/BottomSheetConfig.dart';
import 'package:bookspell/pages/AuthModal/LoginModal.dart';
import 'package:bookspell/shared/constants/appImages.dart';
import 'package:bookspell/shared/constants/appTextStyles.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 30, 20, 14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImages.logo),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bem vindo!',
                                overflow: TextOverflow.fade,
                                style: AppTextStyles.title,
                                maxLines: 1,
                                softWrap: false,
                              ),
                              TextButton(
                                onPressed: () => openLoginModal(context),
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.zero),
                                ),
                                child: Text(
                                  'Comece sua meta de livros!',
                                  style: AppTextStyles.smallLink,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(child: ConfigBottomSheet())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
