

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dart:ui';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freerun/Apk_home.dart';
import 'package:freerun/Data_list/Payment/Payment_mania%20data.dart';
import 'package:freerun/Drawer.dart';
import 'package:freerun/Information_home.dart';
import 'package:freerun/Movie _home.dart';
import 'package:freerun/Data_list/home_add_data.dart';
import 'package:freerun/main.dart';
import 'package:shimmer/shimmer.dart';
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
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                channel.description,

                color: Colors.blue,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ));
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text("notification.title"),
                content: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("notification.body")],
                  ),
                ),
              );
            });
      }
    });


  }
  // void initState() {
  //   super.initState();
  //
  // }



  Widget build(BuildContext context) {
    return Scaffold(


      body:
      Column(
          children: [
            Container(
              // height: 150,
              height: MediaQuery.of(context).size.height-165,

              color: Colors.black,
              child:   SingleChildScrollView(
                // physics: NeverScrollableScrollPhysics(),
                //
                child:Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [

                    Container(
                      color: Colors.black,
                      height: 211,
                      width: 400,
                      child: Expanded(
                        child: PageView.builder(
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

                                      Expanded(
                                        child: Container(

                                          // height: 170,
                                          width: 300,
                                          margin: EdgeInsets.all(9),

                                          // child: Align(
                                          //   alignment: Alignment.topRight,
                                          //   child:
                                          //   Text("${index+1}/5",
                                          //       style: TextStyle(fontSize: 10,color: Colors.teal,)),



                                          decoration: BoxDecoration(

                                            border: Border.all(color:Colors.orangeAccent,width: 2),
                                            borderRadius: BorderRadius.circular(12),
                                            image:DecorationImage(

                                              image: AssetImage(Homeadd[index].Image),
                                              fit: BoxFit.fill,

                                            ),

                                            color: Colors.black,


                                          ),

                                        ),
                                      ),
                                      Container(
                                        color: Colors.black,
                                        child:   Shimmer.fromColors(
                                          baseColor: Colors.red,
                                          highlightColor: Colors.white,
                                          period:Duration(seconds: 1),
                                          loop:15,
                                          child: Text("For further Information,Please Click on Card",
                                              style: TextStyle(fontSize: 8,color: Colors.orangeAccent,)),
                                        ),
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

                    ),


                    TabBar(
                      // physics: NeverScrollableScrollPhysics(),
// isScrollable: true,
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
                      height: 379,
                      color: Colors.black,
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




          ]
      ),
      // Center(
      //  child: Text('$index'),




    );
  }
}
