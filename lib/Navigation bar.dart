

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:freerun/Apk.dart';
import 'package:freerun/Drawer.dart';
import 'package:freerun/Eye.dart';
import 'package:freerun/Movie.dart';

class NavigationBa extends StatefulWidget {
  const NavigationBa({Key? key}) : super(key: key);

  @override
  State<NavigationBa> createState() => _NavigationBaState();
}

class _NavigationBaState extends State<NavigationBa> {
  int index =0;


  final screens =[
    Movie(),
    // Search(),
    Apk(),
    Eye(),
    Movie(),
  ];


  @override
  final items = <Widget>[
    Icon(Icons.home,size: 30,color: Colors.tealAccent,),
    Icon(Icons.search,size: 30,color: Colors.tealAccent),
    Icon(Icons.menu,size: 30,color: Colors.tealAccent),
    Icon(Icons.mail,size: 30,color: Colors.tealAccent),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        drawer: Drawe(),
    appBar:   AppBar(
    iconTheme: IconThemeData(color: Colors.teal),
    backgroundColor: Colors.black,
    title: Column(
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:<Widget>[
    Text("Prime Star",
    style: TextStyle(color: Colors.tealAccent),),


    //  ElevatedButton
    //  (
    //      style: ElevatedButton.styleFrom(
    //          primary:  Colors.black12,
    //        shadowColor: Colors.black54
    //      ),
    //      onPressed: ()async{
    // await Share.share( " PrimeStar\nStream  free movie & web series  \n\n"
    //     "  'https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg\n\n'  ' https://www.youtube.com/'");
    // },
    //
    //     child: Icon(Icons.share,color: Colors.teal,)),
    ]
    ),






    ],
    ),
    ),



    body:   screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        index :index,
        backgroundColor: Colors.transparent,
        color: Colors.black,
        height:60,
        items:items,
        onTap: (index)=>setState(() =>
        this.index=index
        ),
      ),
    ),
    );
  }
}
