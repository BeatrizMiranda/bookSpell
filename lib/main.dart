import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/Splash/SplashPage.dart';
import 'pages/Home/HomeGuest.dart';
import 'pages/Home/HomePage.dart';
import 'shared/theme/themeChanger.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: Builder(
        builder: (BuildContext ctx) {
          final themeChanger = Provider.of<ThemeChanger>(ctx);

          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: ThemeMode.system,
            theme: themeChanger.getThemeData(),
            initialRoute: "/splash",
            routes: {
              "/splash": (ctx) => SplashPage(),
              "/home": (ctx) => HomePage(),
              "/guest": (ctx) => HomeGuest(),
            },
          );
        },
      ),
    );
  }
}
