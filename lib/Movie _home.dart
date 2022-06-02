//movie
import 'package:flutter/material.dart';
import 'package:freerun/Data_list/Movie_data.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
class Stream extends StatefulWidget {
  const Stream({Key? key}) : super(key: key);

  @override
  State<Stream> createState() => _StreamState();
}

class _StreamState extends State<Stream> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Flexible(
        child: Column(
          children: [
            //
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text("Watch New Movie & Web  Series Absolultely Free", style: TextStyle(
            //   color: Colors.tealAccent, fontSize: 12),),
            // ),

        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flexible(
          child: SizedBox(
            // color: Colors.green,
          height: 363,
          child: Flexible(
            child: ListView.builder(

             itemCount: Streamshow.length,
            // physics: NeverScrollableScrollPhysics(),
             shrinkWrap: true,
                 itemBuilder: (context, index) =>
            //
            Link(
            uri: Uri.parse(Streamshow[index].link),
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
            primary: Colors.orangeAccent,
            onPrimary: Colors.black,
            ),
            onPressed: followLink,


             child: Text(Streamshow[index].link,
             style: TextStyle(fontSize: 12)),
            ),
            )),

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
                title: Text(Streamshow[index].websitename,
                  style: TextStyle(
                      color: Colors.tealAccent, fontSize: 19),),
                subtitle: Text(Streamshow[index].feature,
                  style: TextStyle(
                      color: Colors.orangeAccent, fontSize: 12),),

                trailing:

                Text(Streamshow[index].rating, style: TextStyle(
                    color: Colors.orangeAccent, fontSize: 11))


            ),
            ),

            ),
            ),
            ),
          ),
          ),
        ),


        ),
            // SizedBox(height: 50,)
        ],
        ),
      ),
    );
  }
}






