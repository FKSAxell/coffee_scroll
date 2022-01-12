import 'package:coffee_scroll/coffee_scroll.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(fontFamily: "Helvetica"),
              bodyText2: const TextStyle(fontFamily: "Helvetica"),
              button: const TextStyle(fontFamily: "Helvetica"),
              caption: const TextStyle(fontFamily: "Helvetica"),
              headline1: const TextStyle(fontFamily: "Helvetica"),
              headline2: const TextStyle(fontFamily: "Helvetica"),
              headline3: const TextStyle(fontFamily: "Helvetica"),
              headline4: const TextStyle(fontFamily: "Helvetica"),
              headline5: const TextStyle(fontFamily: "Helvetica"),
              headline6: const TextStyle(fontFamily: "Helvetica"),
              overline: const TextStyle(fontFamily: "Helvetica"),
              subtitle1: const TextStyle(fontFamily: "Helvetica"),
              subtitle2: const TextStyle(fontFamily: "Helvetica"),
            ),
      ),
      title: 'Coffee Scroll',
      home: CoffeeScroll(),
    );
  }
}
