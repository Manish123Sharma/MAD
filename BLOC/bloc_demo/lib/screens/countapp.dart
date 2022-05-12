import 'package:bloc_demo/widgets/operation.dart';
import 'package:bloc_demo/widgets/output.dart';
import 'package:flutter/material.dart';

class CountApp extends StatelessWidget {
  const CountApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BLOC')),
      body: Column(
        children: [
          Output(),
          Operations()
        ],
      ),      
    );
  }
}