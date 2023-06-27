import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mini_shop/consts/global_colors.dart';
import 'package:mini_shop/screens/home_screen.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 3.0.4',
      theme: ThemeData(
          scaffoldBackgroundColor: lightCardColor,
          primaryColor: lightCardColor,
          backgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: lightIconsColor),
            backgroundColor: lightBackgroundColor,
            centerTitle: true,
            titleTextStyle: TextStyle(
                color: lightTextColor,
                fontSize: 22,
                fontWeight: FontWeight.bold),
            elevation: 0,
          ),
          iconTheme: IconThemeData(
            color: lightIconsColor,
          ),
          textSelectionTheme: const TextSelectionThemeData(
              cursorColor: Colors.black, selectionColor: Colors.blue),
          cardColor: lightCardColor,
          brightness: Brightness.light,
          colorScheme: ThemeData().colorScheme.copyWith(
              secondary: lightIconsColor, brightness: Brightness.light)),
      home: const HomeScreen(),
    );
  }
}
