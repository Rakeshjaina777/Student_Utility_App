import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:freerun/Data_list/Cricket/cricket_inside_Information_data.dart';
import 'package:freerun/Data_list/Payment/Payment_mania%20data.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/link.dart';

// import 'Payment_ mania _inside_data.dart';


class CricketInsideui extends StatelessWidget {
  final int index;
  const CricketInsideui({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //   child: ListView.builder(
      //   // itemCount: PaymentMania.length,
      // // scrollDirection: Axis.horizontal,
      // itemBuilder: (context,indexnumber)=>
      child: Scaffold(
        //
        appBar:   AppBar(
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(color: Colors.tealAccent),
          backgroundColor: Colors.black,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                Text(CricketInside[index].Companyname,
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
        ),
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: SingleChildScrollView(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 130,


                      decoration: BoxDecoration(



                        border: Border.all(color:Colors.tealAccent,width: 1.5),

                        borderRadius: BorderRadius.circular(15),

                        image:DecorationImage(



                          image: AssetImage(CricketInside[index].Image1),



                          fit: BoxFit.fill
                          ,

                        ),

                        color: Colors.black,

                      ),


                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                        children: [



                          Container(
                            // height: 74,
                            width: 245,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.orangeAccent,width: 1.0,),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Builder(
                                builder: (context) {
                                  return Row(
                                    children : [
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),

                                        child: ClipRect(
                                          child: Text(CricketInside[index].ReferalCode, style: TextStyle(
                                              color: Colors.tealAccent, fontSize: 14, decoration: TextDecoration.none)),
                                        ),
                                      ),

                                      IconButton(
                                        splashRadius:45,
                                        color: Colors.red,
                                        focusColor:Colors.tealAccent ,
                                        icon: Icon(Icons.content_copy),
                                        tooltip: "Copy Referal code",
                                        onPressed: () async {
                                          await FlutterClipboard.copy(CricketInside[index].ReferalCode);

                                          Scaffold.of(context).showSnackBar(SnackBar(
                                              backgroundColor: Colors.black,
                                              elevation: 3.0,
                                              duration: Duration(seconds:1, milliseconds: 200) ,

                                              content: Text("✔   Referal Code Copy", style: TextStyle(
                                                color: Colors.redAccent, fontSize: 16,))

                                          )

                                          );
                                        },

                                      ),

                                    ],
                                  );
                                }
                            ),

                          ),


                          Center(
                            child: Builder(
                                builder: (context) {
                                  return Row(
                                    children: [

                                      SizedBox(width: 60),
                                      Center(
                                        child: Link(
                                          uri: Uri.parse(CricketInside[index].ReferalLink),
                                          // target: LinkTarget.blank,
                                          builder: (context, followLink) =>
                                              ElevatedButton(

                                                style: ElevatedButton.styleFrom(
                                                    primary: Colors.black,
                                                    onPrimary: Colors.tealAccent,
                                                    side: BorderSide(
                                                      color: Colors.orangeAccent,
                                                    )
                                                ),
                                                onPressed: followLink,


                                                child: Text(
                                                    CricketInside[index].ReferalLink,
                                                    style: TextStyle(fontSize: 12)),
                                              ),
                                        ),
                                      ),


                                      IconButton(
                                        splashRadius:45,
                                        color: Colors.red,
                                        focusColor:Colors.tealAccent ,
                                        icon: Icon(Icons.content_copy),
                                        tooltip: "Copy Referal Link",
                                        onPressed: () async {
                                          await FlutterClipboard.copy(CricketInside[index].ReferalLink);

                                          Scaffold.of(context).showSnackBar(SnackBar(
                                              backgroundColor: Colors.black,
                                              elevation: 3.0,
                                              duration: Duration(seconds:1, milliseconds: 200) ,

                                              content: Text("✔   Referal Link Copy", style: TextStyle(
                                                color: Colors.redAccent, fontSize: 16,))

                                          )

                                          );
                                        },

                                      ),

                                    ],
                                  );
                                }
                            ),
                          ),





                        ]
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 49,


                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.tealAccent,width: 0.5,),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)

                      ),

                      // Padding(
                      //   padding: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),

                        child: ClipRect(
                          child: Text("1.Benifit   ", style: TextStyle(
                              color: Colors.orangeAccent, fontSize: 19,fontWeight: FontWeight.bold, decoration: TextDecoration.none)),
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // height: 240,
                      width: double.infinity,

                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal,width: 0.8,),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)

                      ),

                      // Padding(
                      //   padding: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),

                        child: ClipRect(
                          child: Text(CricketInside[index].BenifitInformation, style: TextStyle(
                              color: Colors.tealAccent, fontSize: 14, decoration: TextDecoration.none)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 49,


                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.tealAccent,width: 1,),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)

                      ),

                      // Padding(
                      //   padding: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),

                        child: ClipRect(
                          child: Text("2.Process   ", style: TextStyle(
                              color: Colors.orangeAccent, fontSize: 19,fontWeight: FontWeight.bold, decoration: TextDecoration.none)),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(


                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal,width: 0.8,),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Column(
                        children: [


                          Container(
                            // height: 225,
                            width: double.infinity,
                            //
                            // decoration: BoxDecoration(
                            //   border: Border.all(color: Colors.teal,width: 0.8,),
                            //     color: Colors.black,
                            //     borderRadius: BorderRadius.circular(12)

                          ),

                          // Padding(
                          //   padding: const EdgeInsets.all(12.0),
                          Padding(
                            padding: const EdgeInsets.all(12.0),

                            child: ClipRect(
                              child: Text(CricketInside[index].ProcessInformation, style: TextStyle(
                                  color: Colors.tealAccent, fontSize: 14, decoration: TextDecoration.none)),
                            ),

                          ),



                          Center(

                              child: Link(
                                uri: Uri.parse(CricketInside[index].GoogleForm
                                ),
                                // target: LinkTarget.blank,
                                builder: (context, followLink) =>
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: ElevatedButton(

                                        style: ElevatedButton.styleFrom(
                                            elevation: 3,
                                            primary: Colors.black,
                                            onPrimary: Colors.red,
                                            side: BorderSide(
                                                color: Colors.tealAccent,
                                                width: 0.1
                                            )

                                        ),
                                        onPressed: followLink,


                                        child: Text(
                                            CricketInside[index].GoogleForm,
                                            style: TextStyle(fontSize: 12
                                            )),
                                      ),
                                    ),
                              )),


                        ],
                      ),
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 65,


                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.tealAccent,width: 1,),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)

                      ),

                      // Padding(
                      //   padding: const EdgeInsets.all(12.0),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),

                        child: ClipRect(
                          child: Text("3.How to openAccount easily and fast u can watch this video  ", style: TextStyle(
                              color: Colors.orangeAccent, fontSize: 14,fontWeight: FontWeight.bold, decoration: TextDecoration.none)),
                        ),
                      ),
                    ),
                  ),
                  Center(

                      child: Link(
                        uri: Uri.parse(CricketInside[index].videolink),
                        // target: LinkTarget.blank,
                        builder: (context, followLink) =>
                            ElevatedButton(

                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  onPrimary: Colors.orangeAccent,
                                  side: BorderSide(
                                    color: Colors.tealAccent,
                                  )

                              ),
                              onPressed: followLink,


                              child: Text(
                                  CricketInside[index].videolink,
                                  style: TextStyle(fontSize: 12
                                  )),
                            ),
                      )),

                ],





              ),
            ),
          ),
        ),







      ),

    );
  }
}
