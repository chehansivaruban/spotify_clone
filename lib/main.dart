import 'package:flutter/material.dart';
import 'package:spotify_clone/navigations/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white10,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 12.0,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12.0,
          ),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
        ),
      ),
      home: const Tabbar(),
    );
  }
}
