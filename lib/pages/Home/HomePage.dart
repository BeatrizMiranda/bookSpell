import '/components/CustomButton/CustomButton.dart';
import '/components/Header/Header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Header(),
      ),
      body: Container(
        child: Column(
          children: [
            CustomButton(
              content: 'Crie uma conta',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
