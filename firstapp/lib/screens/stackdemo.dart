import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);
  _getContainer(Color color, {double width = 100, double height = 100}) {
    return Container(
      color: color, width: width, height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            fit: StackFit.loose,
        children: [_getContainer(Colors.red, width: 500, height: 500),
        _getContainer(Colors.green, width: 300, height: 300),
        Positioned(child: _getContainer(Colors.blue),bottom: 10,right: 50,),
        Text('Hello', style: GoogleFonts.pacifico(fontSize: 100, fontStyle: FontStyle.italic,),)
        ],
      )),
    );
  }
}
