import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/Splash/SplashPage.dart';
import 'pages/Home/HomeGuest.dart';
import 'pages/Home/HomePage.dart';
import 'shared/theme/themeChanger.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(),
      child: Builder(
        builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);

          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: themeChanger.getThemeData(),
            initialRoute: "/splash",
            routes: {
              "/splash": (context) => SplashPage(),
              "/home": (context) => HomePage(),
              "/guest": (context) => HomeGuest(),
            },
            home: SplashPage(),
          );
        },
      ),
    );
  }
}
