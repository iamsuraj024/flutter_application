import 'package:flutter/material.dart';
import 'package:flutter_application/vertical_list.dart';

import 'home_screen.dart';
import 'horizontal_list.dart';

void main() {
  runApp(MaterialApp(
    title: 'My App',
    routes: {
      '/': (BuildContext context) => const MyHomePage(),
      '/second': (BuildContext context) => const MyVerticalList(),
      '/third': (BuildContext context) => const MyHorizontalList(),
    },
    initialRoute: '/',
  ));
}
