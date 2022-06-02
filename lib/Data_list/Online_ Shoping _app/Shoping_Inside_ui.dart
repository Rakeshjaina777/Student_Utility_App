import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:freerun/Data_list/Daily_app%20data.dart';
import 'package:freerun/Data_list/Online_%20Shoping%20_app/Shoping_Inside_data.dart';
import 'package:freerun/Data_list/Payment/Payment_mania%20data.dart';
import 'package:freerun/Review_Reward_data.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/link.dart';

// import 'Payment_ mania _inside_data.dart';


class ShopingInsideui extends StatelessWidget {
  final int index;
  const ShopingInsideui({Key? key, required this.index}) : super(key: key);

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
                Text(ShopingInside[index].Companyname,
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



                          image: AssetImage(ShopingInside[index].Image1),



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
                                          child: Text(ShopingInside[index].ReferalCode, style: TextStyle(
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
                                          await FlutterClipboard.copy(ShopingInside[index].ReferalCode);

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
                                            uri: Uri.parse(ShopingInside[index].ReferalLink),
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
                                                      ShopingInside[index].ReferalLink,
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
                                            await FlutterClipboard.copy(ShopingInside[index].ReferalLink);

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




                            // Padding(
                            //   padding: const EdgeInsets.all(12.0),








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
                          child: Text(ShopingInside[index].BenifitInformation, style: TextStyle(
                              color: Colors.tealAccent, fontSize: 14, decoration: TextDecoration.none)),
                        ),
                      ),
                    ),
                  ),

                   // ListView.builder(
                   //
                   //  itemCount: CloneApp.length,
                   //  physics: NeverScrollableScrollPhysics(),
                   //  shrinkWrap: true,
                   //  itemBuilder: (context, index) =>
                    //
                    // Link(
                    //   uri: Uri.parse(CloneApp[0].link),
                    //   // target: LinkTarget.blank,
                    //   builder: (context, followLink) =>
                    //       GestureDetector(
                    //         onTap:  followLink,

                              Card(

                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide( color: Colors.tealAccent,width: 2,)
                              ),
                              elevation: 2.0,
                              color: Colors.black,


                              child:

                              ExpansionTile(
                                collapsedIconColor: Colors.tealAccent,
                                iconColor: Colors.tealAccent,
                                  children: [
                                    // ListTile(
                                    //   leading: Icon(Icons.image, size: 29,
                                    //       color: Colors.tealAccent),
                                    //   // title: Text("Min."),
                                       Column(
                                        children: [

                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(

                                              // height: 10,

                                             child:  Padding(
                                               padding: const EdgeInsets.all(4.0),
                                               child: Text("1.If You Order is Between (₹1-₹2000) U Can Get Upto ₹1-₹1500\n\n"
                                                   "1.If You Order is Between (₹2000-₹1000) U Can Get Upto ₹50-₹2000\n\n"
                                                   "1.If You Order is Between (above>0000) U Can Get Upto₹200-₹2500 \n\n"

                                                   "",style: TextStyle(
                                                   color: Colors.tealAccent, fontSize: 14, decoration: TextDecoration.none)),
                                             ),

                                            ),
                                          ),



                                          Center(

                                              child: Container(
                                                  height: 400,
                                                  // width: 60,
                                                  // color: Colors.red,
                                                  decoration: BoxDecoration(



                                                    border: Border.all(color:Colors.tealAccent,width: 0.5),

                                                    // borderRadius: BorderRadius.circular(5),

                                                    image:DecorationImage(

                                                      image: AssetImage('Assests/Myntra/AffLilate 3.jpg'),


                                                      fit: BoxFit.fill,

                                                    ),
                                                  )









                                      ),
                                          ),

                              SizedBox(height: 25,),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(


                                  child: Align(
                                      alignment :Alignment.topLeft,
                                    child: Text("Term& Condition \n\n"
                                        "1.Term And Condition Applies "
,style: TextStyle(
                                        color: Colors.tealAccent, fontSize: 14, decoration: TextDecoration.none)
                                    ),
                                  ),




                                ),
                              ),


                                        ],
                                      ),

                                  ],

                                  leading: Card(

                                      elevation: 2.0,
                                      color: Colors.black,
                                      // child: Text('${index + 1}', style: TextStyle(
                                      //     color: Colors.tealAccent, fontSize: 45),)

                                  ),
                                  title: Text("Category Wise Cashback List ",
                                    style: TextStyle(
                                        color: Colors.tealAccent, fontSize: 18),),
                                  // subtitle: Text(CloneApp[index].Feature,
                                  //   style: TextStyle(
                                  //       color: Colors.orangeAccent, fontSize: 12),),
                                  // // onTap: AppData[index].lin,
                                  // trailing:
                                  // // Align(
                                  // //     alignment: Alignment.bottomCenter,
                                  // //     child:
                                  // Text(CloneApp[0].Rating, style: TextStyle(
                                  //     color: Colors.orangeAccent, fontSize: 12))
                                // )


                              ),

                            ),

                          // ),

                  //   ),
                  // ),

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
                              child: Text(ShopingInside[index].ProcessInformation, style: TextStyle(
                                  color: Colors.tealAccent, fontSize: 14, decoration: TextDecoration.none)),
                            ),

                          ),



                          Center(

                              child: Link(
                                uri: Uri.parse(ShopingInside[index].GoogleForm
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
                                            ShopingInside[index].GoogleForm,
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
                        uri: Uri.parse(ShopingInside[index].videolink),
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
                                  ShopingInside[index].videolink,
                                  style: TextStyle(fontSize: 12
                                  )),
                            ),
                      )),










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
                          child:Shimmer.fromColors(
                            baseColor: Colors.deepPurpleAccent,
                            highlightColor: Colors.greenAccent,
                            // period:Duration(milliseconds: ),
                            child: Text(
                                "⚡Review And Rate Us⚡", style: TextStyle(
                                color: Colors.tealAccent, fontSize: 18, decoration: TextDecoration.none)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    // child: SizedBox(
                    child:  Container(
                      // color: Colors.black,

                      height: 395 ,
                      // width: 380,
                      child: Flexible(
                        child:Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [


                            Expanded(
                              child: Container(
                                //
                                // height: 285,
                                width: 400,

                                child: ListView.builder(
                                  itemCount:ShopingReview.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context,index)=>
                                  //   Column(
                                  // // children: [

                                  // Link(
                                  //   uri: Uri.parse(Homeadd[index].link),
                                  //   // target: LinkTarget.blank,
                                  //   builder: (context, followLink) =>
                                  //
                                  //       GestureDetector(
                                  //         onTap:  followLink,

                                  Column(
                                    children: [


                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: ClipPath(
                                            clipper: SideCutClipper(),
                                            child: Container(
                                              // height: 300,
                                              width: 260,
                                              margin: EdgeInsets.all(9),

                                              decoration: BoxDecoration(

                                                border: Border.all(width: 2),
                                                borderRadius: BorderRadius.circular(12),
                                                color: Colors.deepPurpleAccent,
                                              ),

                                              child:Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: RichText(

                                                    text:TextSpan(
                                                        children : [
                                                          TextSpan(
                                                            text: ShopingReview[index].Reviewname, style: TextStyle(
                                                              color: Colors.white, fontSize: 21, decoration: TextDecoration.none),
                                                          ),

                                                          TextSpan(
                                                            text:ShopingReview[index].ReviewOccupation , style: TextStyle(
                                                              color: Colors.white, fontSize: 17, decoration: TextDecoration.none),
                                                          ),


                                                          TextSpan(
                                                            text:ShopingReview[index].ReviewStar, style: TextStyle(
                                                              color: Colors.white, fontSize: 13, decoration: TextDecoration.none),
                                                          ),

                                                          TextSpan(
                                                            text:ShopingReview[index].ReviewMatter, style: TextStyle(
                                                              color: Colors.white, fontSize: 15, decoration: TextDecoration.none),
                                                          ),



                                                        ]

                                                    )


                                                  // , style: TextStyle(
                                                  // color: Colors.white, fontSize: 18, decoration: TextDecoration.none)),
                                                ),

                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child:   Text("${index+1}/${ShopingReview.length}",
                                            style: TextStyle(fontSize: 16,color: Colors.tealAccent,)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // SizedBox(height: 50,)

                            ),
                          ],
                        ),
                      ),
                    ),
                  ),




                ],





              ),
            ),
          ),
        ),







      ),

    );
  }
}
