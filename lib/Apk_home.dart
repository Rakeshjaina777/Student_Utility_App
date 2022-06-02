//2
import 'package:flutter/material.dart';
import 'package:freerun/Data_list/Apk_data.dart';
import 'package:freerun/Data_list/Movie_data.dart';
import 'package:url_launcher/link.dart';


class Apk extends StatefulWidget {
  const Apk({Key? key}) : super(key: key);

  @override
  State<Apk> createState() => _ApkState();
}

class _ApkState extends State<Apk> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: ListView.builder(

                itemCount: AppData.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                //
                Link(
                  uri: Uri.parse(AppData[index].link),
                  // target: LinkTarget.blank,
                  builder: (context, followLink) =>
                      GestureDetector(
                        onTap:  followLink,

                        child:  Card(

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide( color: Colors.tealAccent,width: 1,)
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
                                      color: Colors.orangeAccent),
                                  // title: Text("Min."),
                                  subtitle: Column(
                                    children: [



                                      Center(

                                          child: Link(
                                            uri: Uri.parse(AppData[index].link),
                                            // target: LinkTarget.blank,
                                            builder: (context, followLink) =>
                                                ElevatedButton(

                                                  style: ElevatedButton.styleFrom(
                                                    primary: Colors.orangeAccent,
                                                    onPrimary: Colors.black,
                                                  ),
                                                  onPressed: followLink,


                                                  child: Text(
                                                      AppData[index].link,
                                                      style: TextStyle(fontSize: 12)),
                                                ),
                                          )),
                                      Container(
                                        height: 75,


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
                              title: Text(AppData[index].AppName,
                                style: TextStyle(
                                    color: Colors.tealAccent, fontSize: 20),),
                              subtitle: Text(AppData[index].Feature,
                                style: TextStyle(
                                    color: Colors.orangeAccent, fontSize: 12),),
                              // onTap: AppData[index].lin,
                              trailing:
                              // Align(
                              //     alignment: Alignment.bottomCenter,
                              //     child:
                              Text(AppData[index].Rating, style: TextStyle(
                                  color: Colors.orangeAccent, fontSize: 12))
                            // )


                          ),

                        ),
                      ),

                ),
              ),
            ),




          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              child: Container(
                height: 175,


                decoration: BoxDecoration(
                    border: Border.all(color: Colors.tealAccent),

                    // border: BoxBorder.
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)

                ),
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "    Warning    ⚠⚠⚠⚠      \n️\n ⚡⚡⚡ Keeping the below App in you mobil for long persiod time"
                        " might created proplem to you "
                        "so its hightly requested please delete after use and downolad against when u need this against⚡⚡⚡ ", style: TextStyle(
                    color: Colors.redAccent, fontSize: 15,),
                  ),
                ),

              ),
            ),
          ),


          SizedBox(height: 50,)
        ],
      ),
    );
  }
}

