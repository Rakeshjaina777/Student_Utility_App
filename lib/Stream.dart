
import 'package:flutter/material.dart';
import 'package:freerun/Data_list/stream_data.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
class Stream extends StatefulWidget {
  const Stream({Key? key}) : super(key: key);

  @override
  State<Stream> createState() => _StreamState();
}

class _StreamState extends State<Stream> {
  bool button = false;
  List<String>tempArray = [];


  void click (bool button ){
    if( button ==true )
      Expanded(
        child: Column(
            children: [
              Card(
                color: Colors.black12,
                child: ListView.builder(

                  itemCount: Streamshow.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      ListTile(
                        leading: Icon(Icons.voice_chat_rounded, size: 29,
                            color: Colors.orangeAccent),
                        // title: Text("Min."),
                        subtitle: Column(
                          children: [
                            Center(

                                child: Link(
                                  uri: Uri.parse(Streamshow[index].link),
                                  // target: LinkTarget.blank,
                                  builder: (context, followLink) =>
                                      ElevatedButton(

                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.black,
                                          onPrimary: Colors.tealAccent,
                                        ),
                                        onPressed: followLink,


                                        child: Text(
                                            Streamshow[index].linkname,
                                            style: TextStyle(fontSize: 12)),
                                      ),
                                )


                            ),
                          ],

                          // trailing: Icon(Icons.send, color: Colors.black),
                        ),
                      ),
                ),

              ),

            ]

        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      // physics: NeverScrollableScrollPhysics(),
      // shrinkWrap: true,

      child: Column(
        children: [


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,


              child: Expanded(
                child: ListView.builder(

                  itemCount: Streamshow.length,
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                  //


                  Card(
                    elevation: 2.0,
                    color: Colors.black,

                    child: GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          if (tempArray.contains(
                              Streamshow[index].websitename)) {
                            button = false;
                            click (button);
                          }
                          else {
                            button = true;
                            click (button);

                          }

                        }
                        );
                      },


                      child:

                      ListTile(


                          leading: Card(
                              elevation: 2.0,
                              color: Colors.black,
                              child: Text('${index + 1}', style: TextStyle(
                                  color: Colors.teal, fontSize: 45),)

                          ),
                          title: Text(Streamshow[index].websitename,
                            style: TextStyle(
                                color: Colors.teal, fontSize: 20),),
                          subtitle: Text(Streamshow[index].feature,
                            style: TextStyle(
                                color: Colors.teal, fontSize: 13),),

                          trailing:
                          // Align(
                          //     alignment: Alignment.bottomCenter,
                          //     child:
                          Text(Streamshow[index].rating, style: TextStyle(
                              color: Colors.orangeAccent, fontSize: 12))
                        // ),

                      ),
                      onTap: () {
                        setState(() {
                          button = false;
                          click (button );
                        });
                      },
                    ),
                  ),

                ),
              ),
            ),
          ),


//
// SizedBox(height: 50,),
//         Container(
//             child:Text("apple")
//         ),
//
//         SizedBox(height: 50,)
        ],
      ),
    );
  }
}









