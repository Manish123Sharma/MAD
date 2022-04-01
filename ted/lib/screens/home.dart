import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);
_getAppBar(){
  return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
  )
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Row(children: [
          Text('TED',style: GoogleFonts.poppins(color: Colors.redAccent)),
          Text("Newest",style: GoogleFonts.lato(color: Colors.redAccent)),
          const Icon(Icons.arrow_drop_down)
        ]),
      )
    );
  }
}