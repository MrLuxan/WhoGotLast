import 'dart:async';

import 'package:flutter/material.dart';
import 'package:who_got_last/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      //'/': (context) => Loading(),
      '/home': (context) => Home(),
    },
  )
  );
}