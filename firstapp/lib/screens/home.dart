// Widget

import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatelessWidget{
@override
Widget build(BuildContext bt){
  const path= 'https://purepng.com/public/uploads/large/purepng.com-ironman-tony-starkironmansuperheromarvel-comicscharactermarvel-studiosrobert-downey-jrtony-stark-1701528611466k6kco.png';
  return Scaffold(
     drawer: const Drawer(),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.yellow,
       onPressed: (){},
     child: const Text('+'),
     ),
     appBar: AppBar(
       
       //leading: Icon(Icons.menu), 
       actions: const [Icon(Icons.phone,color: Colors.black,),SizedBox( width: 30,) ,Icon(Icons.message), SizedBox(width:10)],
       backgroundColor: Colors.orangeAccent,  
       title: const Text('First App 2022'),),
     backgroundColor: Colors.white,
     body:Container(
       width: 300,
       height: 300,
      //  transform: Matrix4.rotationZ(pi/4),
       //width: double.infinity,
       //height: double.infinity,
       decoration: BoxDecoration(
         shape: BoxShape.circle,
         image: const DecorationImage(image: NetworkImage(path)),
         boxShadow: const [BoxShadow(color: Colors.yellowAccent,blurRadius: 10), BoxShadow(color: Colors.black,blurRadius: 20)],
        //  borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2,color: Colors.black, style: BorderStyle.solid),
         gradient: 
         const SweepGradient(colors: [
        //  LinearGradient(colors: [
          // const RadialGradient(colors:[
         Colors.redAccent, Colors.blueAccent, Colors.greenAccent
       ],
      stops: [0.4,0.7,0.9]
      //  begin: Alignment.topLeft, end:Alignment.bottomRight)
      ),
       //width: 300,
       //height: 200,
      //  child: Text('Flutter Container',style: TextStyle(font Size: 40),),
       //color: Colors.redAccent,
     )
    //
    // body: Image.asset('images/deadpool.jpeg'),
     // Image.network(path)
    //  body: SafeArea(child: Center(
    //    child: Text('hi Flutter', 
    //    style: TextStyle(fontSize: 40),),
    //  )),
  ));
}
}