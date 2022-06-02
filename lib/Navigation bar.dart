

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:freerun/Add_home(3).dart';
import 'package:freerun/Apk_home.dart';
import 'package:freerun/Daily_app.dart';
import 'package:freerun/Drawer.dart';
import 'package:freerun/Information_home.dart';
import 'package:freerun/Home .dart';
import 'package:freerun/Reward_bar.dart';
import 'package:share_plus/share_plus.dart';

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
    Dailyapp(),
    Add_bar(),
    Reward(),
  ];


  @override
  final items = <Widget>[
    Icon(Icons.home,size: 30,color: Colors.tealAccent,),
    Icon(Icons.android,size: 30,color: Colors.tealAccent),
    Icon(Icons.local_fire_department,size: 30,color: Colors.tealAccent),
    Icon(Icons.volunteer_activism,size: 30,color: Colors.tealAccent),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        drawer: Drawe(),
    appBar:   AppBar(
      shape: Border(
        bottom: BorderSide(
          width:1,
          color: Colors.tealAccent,
        )

      ),
      automaticallyImplyLeading: true,
    iconTheme: IconThemeData(color: Colors.tealAccent),
    backgroundColor: Colors.black,
    title: Column(
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:<Widget>[
    Text("Prime Star👀",
    style: TextStyle(color: Colors.tealAccent),),


     ElevatedButton
     (
         style: ElevatedButton.styleFrom(
             primary:  Colors.black12,
           shadowColor: Colors.black54
         ),
         onPressed: ()async{
    await Share.share( " PrimeStar\nStream  free movie & web series  \n\n"
        "  'https://www.mirchi9.com/wp-content/uploads/2018/04/Kiara-Advani-3.jpg\n\n'  ' https://www.youtube.com/'");
    },

        child: Icon(Icons.share,color: Colors.tealAccent,)),
    ]
    ),



// Divider(height: 1,color: Colors.tealAccent,)


    ],
    ),
    ),



    body:   screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        index :index,
        backgroundColor: Colors.transparent,
        color: Colors.black,
        height:68,
        items:items,
        onTap: (index)=>setState(() =>
        this.index=index
        ),
      ),
    ),
    );
  }
}
