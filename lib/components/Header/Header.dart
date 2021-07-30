import '/components/BottomSheetConfig/BottomSheetConfig.dart';
import '/shared/constants/appImages.dart';
import '/shared/constants/appTextStyles.dart';
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Image.asset(AppImages.logo),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Bem vindo!',
                          overflow: TextOverflow.fade,
                          style: AppTextStyles.title,
                          maxLines: 1,
                          softWrap: false,
                        ),
                      ),
                      ConfigBottomSheet()
                    ],
                  ),
                  Text('Comece sua meta de livros!',
                      style: AppTextStyles.smallLink)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
