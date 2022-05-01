

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freerun/Apk.dart';
import 'package:freerun/Drawer.dart';
import 'package:freerun/Eye.dart';
import 'package:freerun/Stream.dart';
import 'package:freerun/Data_list/home_add_data.dart';
import 'package:url_launcher/link.dart';
// import 'package:share_plus/share_plus.dart';

class Movie extends StatefulWidget {
  const Movie({Key? key}) : super(key: key);



  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool showFab = true;


  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 3);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }



  Widget build(BuildContext context) {
    return Scaffold(


      body:
      Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height-160,


              child:   Stack(

                children: <Widget>[
                  Container(

                    child:SingleChildScrollView(
                      // physics: NeverScrollableScrollPhysics(),

                      child:Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                          // SizedBox(height: 3,),
                        //
                        // Padding(
                        //   padding: const EdgeInsets.all(6.0),
                        //   child: Align(
                        //       alignment: Alignment.topLeft,
                        //       child: Text("🎈⚡🎈⚡Movie & Series " ,style: TextStyle(fontSize: 19,color: Colors.tealAccent,))),
                        // ),

                        SizedBox(
                          //
                          height: 211,
                          width: 400,
                          child: ListView.builder(
                            itemCount: Homeadd.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index)=>
                            //   Column(
                            // // children: [
                            Link(
                              uri: Uri.parse(Homeadd[index].link),
                              // target: LinkTarget.blank,
                              builder: (context, followLink) =>
                                  GestureDetector(
                                    onTap:  followLink,

                                    child: Column(
                                      children: [

                                        Container(

                                          height: 170,
                                          width: 300,
                                          margin: EdgeInsets.all(9),

                                          // child: Align(
                                          //   alignment: Alignment.topRight,
                                          //   child:
                                          //   Text("${index+1}/5",
                                          //       style: TextStyle(fontSize: 10,color: Colors.teal,)),



                                            decoration: BoxDecoration(


                                              image:DecorationImage(
                                                image: AssetImage(Homeadd[index].Image),
                                                fit: BoxFit.cover,

                                              ),

                                              color: Colors.black,


                                            ),

                                          ),
                                        Container(
                                          // color: Colors.black,
                                          child:   Text("To visit click on Adds",
                                              style: TextStyle(fontSize: 7,color: Colors.white,)),
                                        ),
                                        Container(
                                          child:   Text("${index+1}/${Homeadd.length}",
                                              style: TextStyle(fontSize: 13,color: Colors.tealAccent,)),
                                        ),


                                      ],
                                    ),

                                    ),
                                  ),
                            ),

                          ),


                          TabBar(
                            // physics: NeverScrollableScrollPhysics(),

                            controller: _tabController,
                            indicatorColor: Colors.tealAccent,
                            labelColor:Colors.tealAccent ,
                            tabs: <Widget>[

                              Tab(icon: Icon(Icons.remove_red_eye,color:Colors.tealAccent[100])),

                              Tab(text: "Stream"

                              ),
                              Tab(
                                text: "Apk",

                              ),

                            ],
                          ),


                          Container(
                            width: double.maxFinite,
                            height: 1500,
                            child:
                            TabBarView(
                              // physics: NeverScrollableScrollPhysics(),

                              controller: _tabController,
                              children: <Widget>[

                                Eye(),
                                Stream(),
                                Apk()

                              ],
                            ),
                          ),

                          ],
                        ),

                      ),
                    ),


                  ),

                ],
              ),
            ),




          ]
      ),
      // Center(
      //  child: Text('$index'),




    );
  }
}
