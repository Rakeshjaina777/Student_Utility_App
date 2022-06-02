import 'package:flutter/material.dart';
import 'package:freerun/Data_list/Daily_app%20data.dart';
import 'package:freerun/Drawer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/link.dart';

class Dailyapp extends StatelessWidget {
  const Dailyapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawe(),
      body: SafeArea(
        child: Container(
          color: Colors.black,

          child: SingleChildScrollView(
            child: Flexible(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 45,


                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.tealAccent,width: 2,),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)

                      ),

                      // Padding(
                      //   padding: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),

                        child: ClipRect(
                          child:  Shimmer.fromColors(
                            baseColor: Colors.tealAccent,
                            highlightColor: Colors.white,
                            // period:Duration(milliseconds: ),
                            child: Text(
                                "⚡ USEFUL APK ⚡", style: TextStyle(
                                color: Colors.tealAccent, fontSize: 18, decoration: TextDecoration.none)),
                          ),
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 134,


                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.tealAccent,width: 2,),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30)

                      ),

                      // Padding(
                      //   padding: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child:  Shimmer.fromColors(
                          baseColor: Colors.red,
                          highlightColor: Colors.white,
                          period:Duration(seconds: 1),
                          loop:3 ,
                          child: Text(
                              "🎈 Clone of some useful App with more Advance  feacture \n\n"
                                  "🎈 Keeping this  below App in you mobil in you own Risks  ", style: TextStyle(
                              color: Colors.redAccent, fontSize: 16,fontWeight: FontWeight.bold, decoration: TextDecoration.none)
                          ),
                        ),
                      ),
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(

                      itemCount: CloneApp.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                      //
                      Link(
                        uri: Uri.parse(CloneApp[index].link),
                        // target: LinkTarget.blank,
                        builder: (context, followLink) =>
                            GestureDetector(
                              onTap:  followLink,

                              child:  Card(

                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide( color: Colors.tealAccent,width: 2,)
                                ),
                                elevation: 2.0,
                                color: Colors.black,


                                child:

                                ExpansionTile(
                                  // collapsedIconColor: Colors.tealAccent,
                                  // iconColor: Colors.tealAccent,
                                    children: [
                                      ListTile(
                                        leading: Icon(Icons.android, size: 29,
                                            color: Colors.tealAccent),
                                        // title: Text("Min."),
                                        subtitle: Column(
                                          children: [
                                            Center(

                                                child: Link(
                                                  uri: Uri.parse(CloneApp[index].link),
                                                  // target: LinkTarget.blank,
                                                  builder: (context, followLink) =>
                                                      ElevatedButton(

                                                        style: ElevatedButton.styleFrom(
                                                          primary: Colors.orangeAccent,
                                                          onPrimary: Colors.black,
                                                        ),
                                                        onPressed: followLink,


                                                        child: Text(
                                                            CloneApp[index].link,
                                                            style: TextStyle(fontSize: 12)),
                                                      ),
                                                )),

                                            Container(
                                              // height: ,
                                            child:  Column(
                                                children: [

                                               Text (CloneApp[index].Process, style: TextStyle(
                                            color: Colors.teal, fontSize: 14,fontWeight: FontWeight.bold, decoration: TextDecoration.none)
                                               ),

                                              Center(

                                                  child: Link(
                                                    uri: Uri.parse(CloneApp[index].link),
                                                    // target: LinkTarget.blank,
                                                    builder: (context, followLink) =>
                                                        ElevatedButton(

                                                          style: ElevatedButton.styleFrom(
                                                            primary: Colors.orangeAccent,
                                                            onPrimary: Colors.black,
                                                          ),
                                                          onPressed: followLink,


                                                          child: Text(
                                                              CloneApp[index].link,
                                                              style: TextStyle(fontSize: 12,color: Colors.black)),
                                                        ),
                                                  )),

                                              ]
                                            ),

                                            ),


                                          ],
                                        ),
                                      ),
                                    ],

                                    leading: Card(

                                        elevation: 2.0,
                                        color: Colors.black,
                                        child: Text('${index + 1}', style: TextStyle(
                                            color: Colors.tealAccent, fontSize: 45),)

                                    ),
                                    title: Text(CloneApp[index].AppName,
                                      style: TextStyle(
                                          color: Colors.tealAccent, fontSize: 18),),
                                    subtitle: Text(CloneApp[index].Feature,
                                      style: TextStyle(
                                          color: Colors.orangeAccent, fontSize: 12),),
                                    // onTap: AppData[index].lin,
                                    trailing:
                                    // Align(
                                    //     alignment: Alignment.bottomCenter,
                                    //     child:
                                    Text(CloneApp[index].Rating, style: TextStyle(
                                        color: Colors.orangeAccent, fontSize: 12))
                                  // )


                                ),

                              ),
                            ),

                      ),
                    ),




                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(10.0),
                  //   child: SizedBox(
                  //     child: Container(
                  //       height: 175,
                  //
                  //
                  //       decoration: BoxDecoration(
                  //           border: Border.all(color: Colors.orange),
                  //
                  //           // border: BoxBorder.
                  //           color: Colors.black,
                  //           borderRadius: BorderRadius.circular(45)
                  //
                  //       ),
                  //       child:Padding(
                  //         padding: const EdgeInsets.all(12.0),
                  //         child: Text(
                  //           "    Warning    ⚠⚠⚠⚠      \n️\n ⚡⚡⚡ Keeping the below App in you mobil for long persiod time"
                  //               " might created proplem to you "
                  //               "so its hightly requested please delete after use and downolad against when u need this against⚡⚡⚡ ", style: TextStyle(
                  //           color: Colors.redAccent, fontSize: 15, decoration: TextDecoration.none),
                  //         ),
                  //       ),
                  //
                  //     ),
                  //   ),
                  // ),
                  SizedBox(height: 50,)




                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

