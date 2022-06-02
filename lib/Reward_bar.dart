import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:freerun/Data_list/Daily_app%20data.dart';
import 'package:freerun/Data_list/Payment/Payment_mania%20data.dart';
import 'package:freerun/Data_list/home_add_data.dart';
import 'package:freerun/Drawer.dart';
import 'package:freerun/Reward_information_data.dart';
import 'package:freerun/Review_Reward_data.dart';

// import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/link.dart';

class Reward extends StatelessWidget {
  const Reward ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TableRow buildRow(List<String>cells) => TableRow(

      children:cells.map((cell){

        return Padding(
          padding: EdgeInsets.all(8),
          child: Center(child: Text(cell, style: TextStyle(
              color: Colors.orangeAccent, fontSize: 14,fontWeight: FontWeight.bold))),

        );

      }).toList(),
    );


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
                            baseColor: Colors.deepPurpleAccent,
                            highlightColor: Colors.white,
                            // period:Duration(milliseconds: ),
                            child: Text(
                                "⚡ Reward ⚡", style: TextStyle(
                                color: Colors.tealAccent, fontSize: 18, decoration: TextDecoration.none)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(" Prime Star :\n Best Platform to Earn the Reward & Cashback  on Online Shoping & Opening New Account ", style: TextStyle(
                        color: Colors.tealAccent, fontSize: 14,fontWeight: FontWeight.bold, decoration: TextDecoration.none)),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(" Fill Your Pocket with Extra Pocket Money ", style: TextStyle(
                        color: Colors.deepPurpleAccent, fontSize: 14,fontWeight: FontWeight.bold, decoration: TextDecoration.underline,decorationColor: Colors.teal,wordSpacing: 2.0,)),
                  ),


                  SizedBox(height: 12,),
                  Text("1.Payment Apps", style: TextStyle(
                      color: Colors.red, fontSize: 15,fontWeight: FontWeight.bold, decoration: TextDecoration.none)),

                  SizedBox(height: 12,),
                  Table(
                    border: TableBorder.all(
                      color: Colors.teal,
                    ),

                    columnWidths: {
                      0:FractionColumnWidth(0.30),
                      1:FractionColumnWidth(0.30),
                      2:FractionColumnWidth(0.20),
                      3:FractionColumnWidth(0.20),

                    },

                    children: [

                      buildRow(['App Name ','Cashback\nmin-max','Time Needed','Referal Code']),

                      buildRow(['1.Amazon Pay ','₹100-₹500','2-5 mintue','Rak023']),
                      buildRow(['2.Paytm','₹80-₹500','2-5 mintue','Inside  Card']),
                      buildRow(['3.Phonepay ','₹75-₹350','4-5 mintue','Inside  Card']),
                      buildRow(['4.Google Pay','₹80-₹850','3 Mintue','Inside  Card']),
                      buildRow(['5.Mobikwi','₹115-₹1000','3-5 Mintue','Inside  Card']),
                      buildRow(['Total ','2000-5900','2.5hours- 5 hours.','N/A']),

                      // buildRow(['Mobikwiki ','Get Upto  \n   4%\nCashBack','Go to flipKart with Our Referal Linkl','ddasaqw']),buildRow(['Phonepay Pay ','75-525','5-10 mintue','ddasaqw']),

                      // buildRow(['Paytm','Get Upto 5%CashBack','N/A','Inside  Card']),
                      //
                      // buildRow(['Total ','2000-5900','2.5hours- 5 hours.','N/A']),


                    ],
                  ),

                  SizedBox(height: 25,),
                  Text("Online Shoping", style: TextStyle(
                      color: Colors.red, fontSize: 15,fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                  ),
                  SizedBox(height: 25,),
                  Table(
                    border: TableBorder.all(
                      color: Colors.teal,
                    ),
                    children: [
                      // buildRow(['App Name ','Cashback\nmin-max','Time Needed','Referal Code']),
                      buildRow(['Amazon Pay ','75-525','5-10 mintue','fgfdsaww']),
                      buildRow(['Phonepay Pay ','75-525','5-10 mintue','ddasaqw']),
                      buildRow(['Phonepay Pay ','75-525','5-10 mintue','ddasaqw']),

                      buildRow([' Flipkart','Get Upto 5%CashBack','N/A','Inside  Card']),

                      buildRow(['Total ','2000-5900','2.5hours- 5 hours.','N/A']),


                    ],
                  ),

                  SizedBox(height: 25,),
                  Text("Do Warm Up Befor Ipl", style: TextStyle(
                      color: Colors.red, fontSize: 15,fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                  ),

                  SizedBox(height: 12,),
                  Table(
                    border: TableBorder.all(
                      color: Colors.teal,
                    ),
                    children: [
                      buildRow(['App Name ','Cashback\nmin-max','Time Needed','Referal Code']),

                      buildRow(['1.Amazon Pay ','₹100-₹500','2-5 mintue','Rak023']),
                      buildRow(['2.Paytm','₹80-₹500','2-5 mintue','Inside  Card']),
                      buildRow(['3.Phonepay ','₹75-₹350','4-5 mintue','Inside  Card']),
                      buildRow(['4.Google Pay','₹80-₹850','3 Mintue','Inside  Card']),
                      buildRow(['5.Mobikwi','₹115-₹1000','3-5 Mintue','Inside  Card']),
                      buildRow(['Total ','2000-5900','2.5hours- 5 hours.','N/A']),

                      // buildRow(['Mobikwiki ','Get Upto  \n   4%\nCashBack','Go to flipKart with Our Referal Linkl','ddasaqw']),buildRow(['Phonepay Pay ','75-525','5-10 mintue','ddasaqw']),

                      // buildRow(['Paytm','Get Upto 5%CashBack','N/A','Inside  Card']),
                      //
                      // buildRow(['Total ','2000-5900','2.5hours- 5 hours.','N/A']),


                    ],



                  ),



                  SizedBox(height: 25,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(

                      itemCount: RewardInformation.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                      //
                      // Link(
                      //   uri: Uri.parse(CloneApp[index].link),
                      //   // target: LinkTarget.blank,
                      //   builder: (context, followLink) =>
                      //       GestureDetector(
                      //         onTap:  followLink,

                      Card(

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
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
                              // leading: Icon(Icons.android, size: 29,
                              //     color: Colors.tealAccent),
                              // // title: Text("Min."),
                              subtitle: Column(
                                children: [


                                  Text(
                                      RewardInformation[index].InsideFeature,
                                      style: TextStyle(fontSize: 16,color: Colors.tealAccent)),
                                  SizedBox(height: 25,),



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
                          title: Text(RewardInformation[index].OutsideFeature,
                            style: TextStyle(
                                color: Colors.tealAccent, fontSize: 18),),
                          // subtitle: Text(CloneApp[index].Feature,
                          //   style: TextStyle(
                          //       color: Colors.orangeAccent, fontSize: 12),),
                          // onTap: AppData[index].lin,
                          // trailing:

                          // alignment: Alignment.bottomCenter,
                          //
                          //     Text(CloneApp[index].Rating, style: TextStyle(
                          //         color: Colors.orangeAccent, fontSize: 12))
                          // //


                        ),

                      ),
                    ),

                  ),



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

                      height: 370,
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
                                  itemCount: Review.length,
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
                                                            text: Review[index].Reviewname, style: TextStyle(
                                                              color: Colors.white, fontSize: 21, decoration: TextDecoration.none),
                                                          ),

                                                          TextSpan(
                                                            text:Review[index].ReviewOccupation , style: TextStyle(
                                                              color: Colors.white, fontSize: 17, decoration: TextDecoration.none),
                                                          ),


                                                          TextSpan(
                                                            text: Review[index].ReviewStar, style: TextStyle(
                                                              color: Colors.white, fontSize: 13, decoration: TextDecoration.none),
                                                          ),

                                                          TextSpan(
                                                            text:Review[index].ReviewMatter, style: TextStyle(
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
                                        child:   Text("${index+1}/${Review.length}",
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

