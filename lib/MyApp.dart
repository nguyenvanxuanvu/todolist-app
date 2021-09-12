import 'dart:ui';
import 'package:todolist_app/walkthrough.dart';

import 'walkthrough_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist_app/walkthrough_1.dart';
class MyApp extends StatelessWidget {

  MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Todo list app',
        theme: ThemeData(
          //primaryColor: Color.fromRGBO(253, 253, 253, 1),
          //accentColor: Color.fromRGBO(253, 253, 253, 1),
          //backgroundColor: Color.fromRGBO(253, 253, 253, 1),
        ),
        home: Walkthrough(),
    );
  }
}