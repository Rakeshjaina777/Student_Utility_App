
import 'package:flutter/material.dart';
import 'package:freerun/Data_list/Apk_data.dart';
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
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              child: Container(
                height: 125,


                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(45)

                ),
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "    Warning⚠⚠⚠⚠      \n️\n  Keeping the below App in you mobil for long persiod time"
                        " might created proplem to you "
                        "so its hightly requested please delete after use and downolad against when u need this against ", style: TextStyle(
                    color: Colors.orangeAccent, fontSize: 13,),
                  ),
                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 360,


              child: Expanded(
                child: ListView.builder(

                  itemCount: AppData.length,
                  // physics: NeverScrollableScrollPhysics(),
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

                            elevation: 2.0,
                            color: Colors.black,

                            // child: GestureDetector(
                            //   onDoubleTap: () {
                            //     setState(() {
                            //       if (tempArray.contains(
                            //           Streamshow[index].websitename)) {
                            //         button = false;
                            //         click (button);
                            //       }
                            //       else {
                            //         button = true;
                            //         click (button);
                            //
                            //       }
                            //
                            //     }
                            //     );
                            //   },


                            child:

                            ListTile(


                                leading: Card(
                                    elevation: 2.0,
                                    color: Colors.black,
                                    child: Text('${index + 1}', style: TextStyle(
                                        color: Colors.teal, fontSize: 45),)

                                ),
                                title: Text(AppData[index].AppName,
                                  style: TextStyle(
                                      color: Colors.teal, fontSize: 20),),
                                subtitle: Text(AppData[index].Feature,
                                  style: TextStyle(
                                      color: Colors.teal, fontSize: 13),),
                                // onTap: AppData[index].lin,
                                trailing:
                                // Align(
                                //     alignment: Alignment.bottomCenter,
                                //     child:
                                Text(AppData[index].Rating, style: TextStyle(
                                    color: Colors.orangeAccent, fontSize: 12))
                              // ),

                            ),
                            // onTap: () {
                            //   setState(() {
                            //     button = false;
                            //     click (button );
                            //   });
                            // },
                          ),
                        ),

                  ),
                ),
              ),
            ),
            // ),


//
// SizedBox(height: 50,),
//         Container(
//             child:Text("apple")
//         ),
//
          ),SizedBox(height: 50,)
        ],
      ),
    );
  }
}


//
// ),
//       ],
//       ),
//     );
//   }
// }
