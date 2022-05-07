import 'package:flutter/material.dart';
import 'package:shop/screens/animatio.dart';
import 'package:shop/screens/home2.dart';
import 'package:shop/screens/intro_screens.dart';
import 'package:shop/screens/rich_text.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home:home2()
    // home: RichTextExample(),
    home: Animatedcontainer(),
  ));
}