//ybig

// after every 300 there is each column
import 'package:flutter/material.dart';
import 'package:freerun/Data_list/Cricket/cricket_Outside_data.dart';
import 'package:freerun/Data_list/Cricket/cricket_inside_Information_data.dart';
import 'package:freerun/Data_list/Online_%20Shoping%20_app/Shoping_Inside_data.dart';
import 'package:freerun/Data_list/Online_%20Shoping%20_app/Shoping_outside_data.dart';
import 'package:freerun/Data_list/Payment/Payment_%20mania%20_inside_data.dart';
import 'package:freerun/Data_list/Trading/Trading_outside_data.dart';
import 'package:freerun/Payment%20mania%20inside/Amazon_Pay.dart';
import 'package:freerun/Data_list/Payment/Payment_mania%20data.dart';
import 'package:freerun/Data_list/home_add_data.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/link.dart';
class Add_bar extends StatelessWidget {
  const Add_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(



        body:
        Container(
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
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
                          child: Shimmer.fromColors(
                            baseColor: Colors.red,
                            highlightColor: Colors.white,
                            period:Duration(seconds: 1),
                            loop:3 ,
                            child: Text("⚡ Install App & Earn Cash Reward ⚡", style: TextStyle(
                                color: Colors.tealAccent,fontWeight: FontWeight.bold, fontSize: 16, decoration: TextDecoration.none)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),



                Row(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,


                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("1. Payment Mania    " , style: TextStyle(fontSize: 18,color: Colors.tealAccent,)),
                        )),
                    Icon(Icons.arrow_forward_ios_sharp,color: Colors.tealAccent,),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height-380,


                  child:   Stack(

                    children: <Widget>[
                      Container(
                        height: 300,
                          // width: 412,

                          child:Flexible(
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [


                                    Expanded(
                                      child: SizedBox(
                                        //
                                        height: 275,
                                        width: 400,
                                        child: PageView.builder(
                                          itemCount: PaymentMania.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context,index)=>
                                          //   Column(
                                          // // children: [
                                          // Link(
                                          //   uri: Uri.parse(Homeadd[index].link),
                                          //   // target: LinkTarget.blank,
                                          //   builder: (context, followLink) =>
                                          GestureDetector(
                                            onTap: ()=>Navigator.pushNamed(context, PaymentMania[index].goto) ,

                                            child: Column(
                                              children: [

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child:   Card   (

                                                    shape: RoundedRectangleBorder(

                                                        borderRadius: BorderRadius.circular(10),

                                                        side: BorderSide( color: Colors.tealAccent,width: 1,)

                                                    ),

                                                    color: Colors.black,



                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [

                                                        Row(

                                                          crossAxisAlignment: CrossAxisAlignment.start,

                                                          children: [

                                                            Padding(

                                                              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 4),

                                                              child: Column(
                                                                children: [

                                                                  Container(

                                                                    height: 35,

                                                                    width: 70,

                                                                    margin: EdgeInsets.all(5),


                                                                    decoration: BoxDecoration(



                                                                      border: Border.all(color:Colors.tealAccent,width: 0.5),

                                                                      borderRadius: BorderRadius.circular(5),

                                                                      image:DecorationImage(

                                                                        image: AssetImage(PaymentMania[index].Image1),

                                                                        fit: BoxFit.fill,

                                                                      ),

                                                                      // color: Colors.grey[700],

                                                                    ),

                                                                  ),
                                                                  SizedBox(height: 25,),
                                                                  Container(



                                                                    height: 40,

                                                                    width: 80,

                                                                    margin: EdgeInsets.all(1),

                                                                    child:   Padding(
                                                                      padding: const EdgeInsets.all(3.0),
                                                                      child: Text(PaymentMania[index].ReferalCode,style: TextStyle(
                                                                          color: Colors.tealAccent, fontSize: 11,fontWeight: FontWeight.bold, decoration: TextDecoration.none)),
                                                                    ),


                                                                    decoration: BoxDecoration(



                                                                      border: Border.all(color:Colors.tealAccent,width: 0.5),

                                                                      borderRadius: BorderRadius.circular(5),

                                                                      color: Colors.black,

                                                                    ),


                                                                  ),

                                                                ],
                                                              ),

                                                            ),

                                                            Padding(

                                                              padding: const EdgeInsets.all(14.0),

                                                              child: Container(



                                                                height: 120,

                                                                width: 175,

                                                                decoration: BoxDecoration(



                                                                  border: Border.all(color:Colors.tealAccent,width: 0),

                                                                  borderRadius: BorderRadius.circular(12),

                                                                  image:DecorationImage(

                                                                    //

                                                                    image: AssetImage(PaymentMania[index].Image2),

                                                                    fit: BoxFit.fill,

                                                                    //

                                                                  ),

                                                                  color: Colors.black,

                                                                ),

                                                              ),

                                                            ),

                                                          ],

                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: const  EdgeInsets.symmetric(vertical: 0.5,horizontal: 10),
                                                              child: Shimmer.fromColors(
                                                                baseColor: Colors.red,
                                                                highlightColor: Colors.white,
                                                                period:Duration(seconds: 1),
                                                                loop:6 ,
                                                                child: Text(PaymentMania[index].Feacture1 ,style: TextStyle(

                                                                    color: Colors.tealAccent, fontSize: 15,fontWeight: FontWeight.bold, decoration: TextDecoration.none),

                                                                  // TextField(minLines: 2,maxLines: 4,)

                                                                  // maxLines: 3,

                                                                ),
                                                              ),
                                                            ),





                                                          ],



                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(PaymentMania[index].Feacture2 ,style: TextStyle(

                                                              color: Colors.tealAccent, fontSize: 8,fontWeight: FontWeight.bold, decoration: TextDecoration.none),

                                                          ),
                                                        ),


                                                      ],

                                                    ),

                                                  ),
                                                ),
                                                Container(
                                                  // color: Colors.black,
                                                  child:   Text("For further Information Click on Card",
                                                      style: TextStyle(fontSize: 9,color: Colors.orangeAccent,)),
                                                ),
                                                Container(
                                                  child:   Text("${index+1}/${PaymentMania.length}",
                                                      style: TextStyle(fontSize: 13,color: Colors.tealAccent,)),
                                                ),
                                              ],
                                            ),

                                          ),

                                        ),

                                      ),
                                    ),
                                  ]
                              )
                          )
                      ),




                    ],
                  ),

                ),


                Row(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,


                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("2. Bowled by Cashback   " , style: TextStyle(fontSize: 18,color: Colors.tealAccent,)),
                        )),
                    Icon(Icons.arrow_forward_ios_sharp,color: Colors.tealAccent,),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height-380,

                  child:   Stack(

                    children: <Widget>[
                      Container(

                          child:Flexible(
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [


                                    Expanded(
                                      child: SizedBox(
                                        //
                                        height: 275,
                                        width: 400,
                                        child: ListView.builder(
                                          itemCount:  CricketOutside.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context,index)=>

                                              GestureDetector(
                                                onTap: ()=>Navigator.pushNamed(context, CricketOutside[index].goto) ,

                                                child: Column(
                                                  children: [

                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child:   Card   (

                                                        shape: RoundedRectangleBorder(

                                                            borderRadius: BorderRadius.circular(10),

                                                            side: BorderSide( color: Colors.tealAccent,width: 1,)

                                                        ),

                                                        color: Colors.black,



                                                        child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [

                                                            Row(

                                                              crossAxisAlignment: CrossAxisAlignment.start,

                                                              children: [



                                                                Padding(

                                                                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 4),

                                                                  child: Column(
                                                                    children: [

                                                                      Container(

                                                                        height: 35,

                                                                        width: 70,

                                                                        margin: EdgeInsets.all(5),


                                                                        decoration: BoxDecoration(



                                                                          border: Border.all(color:Colors.tealAccent,width: 0.5),

                                                                          borderRadius: BorderRadius.circular(5),

                                                                          image:DecorationImage(

                                                                            image: AssetImage(CricketOutside[index].Image1),

                                                                            // image: NetworkImage('https://indian-retailer.s3.ap-south-1.amazonaws.com/s3fs-public/2021-08/amazonpayinv.png',

                                                                            // ),

                                                                            fit: BoxFit.fill,

                                                                          ),

                                                                          // color: Colors.grey[700],

                                                                        ),

                                                                      ),
                                                                      SizedBox(height: 25,),
                                                                      Container(



                                                                        height: 40,

                                                                        width: 80,

                                                                        margin: EdgeInsets.all(1),

                                                                        child:   Padding(
                                                                          padding: const EdgeInsets.all(3.0),
                                                                          child: Text(CricketOutside[index].ReferalCode,style: TextStyle(
                                                                              color: Colors.tealAccent, fontSize: 11,fontWeight: FontWeight.bold, decoration: TextDecoration.none)),
                                                                        ),


                                                                        decoration: BoxDecoration(



                                                                          border: Border.all(color:Colors.tealAccent,width: 0.5),

                                                                          borderRadius: BorderRadius.circular(5),


                                                                          color: Colors.black,

                                                                        ),


                                                                      ),

                                                                    ],
                                                                  ),

                                                                ),

                                                                Padding(

                                                                  padding: const EdgeInsets.all(14.0),

                                                                  child: Container(



                                                                    height: 120,

                                                                    width: 190,

                                                                    decoration: BoxDecoration(



                                                                      border: Border.all(color:Colors.tealAccent,width: 0),

                                                                      borderRadius: BorderRadius.circular(12),

                                                                      image:DecorationImage(

                                                                        //

                                                                        image: AssetImage(CricketOutside[index].Image2),

                                                                        fit: BoxFit.fill,

                                                                        //

                                                                      ),

                                                                      color: Colors.black,

                                                                    ),

                                                                  ),

                                                                ),

                                                              ],

                                                            ),
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: const  EdgeInsets.symmetric(vertical: 0.5,horizontal: 10),
                                                                  child: Shimmer.fromColors(
                                                                    baseColor: Colors.red,
                                                                    highlightColor: Colors.white,
                                                                    period:Duration(seconds: 1),
                                                                    loop:6 ,
                                                                    child: Text(CricketOutside[index].Feacture1 ,style: TextStyle(

                                                                        color: Colors.tealAccent, fontSize: 15,fontWeight: FontWeight.bold, decoration: TextDecoration.none),

                                                                      // TextField(minLines: 2,maxLines: 4,)

                                                                      // maxLines: 3,

                                                                    ),
                                                                  ),
                                                                ),





                                                              ],



                                                            ),

                                                            Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Text(CricketOutside[index].Feacture2 ,style: TextStyle(

                                                                  color: Colors.tealAccent, fontSize: 8,fontWeight: FontWeight.bold, decoration: TextDecoration.none),

                                                              ),
                                                            ),


                                                          ],

                                                        ),

                                                      ),
                                                    ),
                                                    Container(
                                                      // color: Colors.black,
                                                      child:   Text("For further Information Click on Card",
                                                          style: TextStyle(fontSize: 9,color: Colors.orangeAccent,)),
                                                    ),
                                                    Container(
                                                      child:   Text("${index+1}/${CricketOutside.length}",
                                                          style: TextStyle(fontSize: 13,color: Colors.tealAccent,)),
                                                    ),
                                                  ],
                                                ),

                                              ),

                                        ),

                                      ),
                                    ),
                                  ]
                              )
                          )
                      ),




                    ],
                  ),

                ),



                Row(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,


                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("3. Be the next Bigg Bull with \n    best trading App     " , style: TextStyle(fontSize: 18,color: Colors.tealAccent,)),
                        )),
                    Icon(Icons.arrow_forward_ios_sharp,color: Colors.tealAccent,),
                  ],
                ),
                Container(
                  // height: MediaQuery.of(context).size.height-372,

                  child:   Stack(

                    children: <Widget>[
                      Container(
                          height: 300,
                          child:Flexible(
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [


                                    Expanded(
                                      child: Container(
                                        //
                                        // height: 285,
                                        width: 400,
                                        child: ListView.builder(
                                          itemCount: TradingOutside.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context,index)=>
                                          //   Column(
                                          // // children: [
                                          // Link(
                                          //   uri: Uri.parse(Homeadd[index].link),
                                          //   // target: LinkTarget.blank,
                                          //   builder: (context, followLink) =>
                                          GestureDetector(
                                            onTap: ()=>Navigator.pushNamed(context, TradingOutside[index].goto) ,

                                            child: Column(
                                              children: [

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child:   Card   (

                                                    shape: RoundedRectangleBorder(

                                                        borderRadius: BorderRadius.circular(10),

                                                        side: BorderSide( color: Colors.tealAccent,width: 1,)

                                                    ),

                                                    color: Colors.black,



                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [

                                                        Row(

                                                          crossAxisAlignment: CrossAxisAlignment.start,

                                                          children: [



                                                            Padding(

                                                              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 4),

                                                              child: Column(
                                                                children: [

                                                                  Container(

                                                                    height: 35,

                                                                    width: 70,

                                                                    margin: EdgeInsets.all(5),


                                                                    decoration: BoxDecoration(



                                                                      border: Border.all(color:Colors.tealAccent,width: 0.5),

                                                                      borderRadius: BorderRadius.circular(5),

                                                                      image:DecorationImage(

                                                                        image: AssetImage(TradingOutside[index].Image1),

                                                                        // image: NetworkImage('https://indian-retailer.s3.ap-south-1.amazonaws.com/s3fs-public/2021-08/amazonpayinv.png',

                                                                        // ),

                                                                        fit: BoxFit.fill,

                                                                      ),

                                                                      // color: Colors.grey[700],

                                                                    ),

                                                                  ),
                                                                  SizedBox(height: 25,),
                                                                  Container(



                                                                    height: 40,

                                                                    width: 80,

                                                                    margin: EdgeInsets.all(1),

                                                                    child:   Padding(
                                                                      padding: const EdgeInsets.all(3.0),
                                                                      child: Text(TradingOutside[index].ReferalCode,style: TextStyle(
                                                                          color: Colors.tealAccent, fontSize: 11,fontWeight: FontWeight.bold, decoration: TextDecoration.none)),
                                                                    ),


                                                                    decoration: BoxDecoration(



                                                                      border: Border.all(color:Colors.tealAccent,width: 0.5),

                                                                      borderRadius: BorderRadius.circular(5),

                                                                      color: Colors.black,

                                                                    ),


                                                                  ),

                                                                ],
                                                              ),

                                                            ),

                                                            Padding(

                                                              padding: const EdgeInsets.all(14.0),

                                                              child: Container(



                                                                height: 120,

                                                                width: 190,

                                                                decoration: BoxDecoration(



                                                                  border: Border.all(color:Colors.tealAccent,width: 0),

                                                                  borderRadius: BorderRadius.circular(12),

                                                                  image:DecorationImage(

                                                                    //

                                                                    image: AssetImage(TradingOutside[index].Image2),

                                                                    fit: BoxFit.fill,

                                                                    //

                                                                  ),

                                                                  color: Colors.black,

                                                                ),

                                                              ),

                                                            ),

                                                          ],

                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: const  EdgeInsets.symmetric(vertical: 0.5,horizontal: 10),
                                                              child: Shimmer.fromColors(
                                                                baseColor: Colors.red,
                                                                highlightColor: Colors.white,
                                                                period:Duration(seconds: 1),
                                                                loop:6 ,
                                                                child: Text(TradingOutside[index].Feacture1 ,style: TextStyle(

                                                                    color: Colors.tealAccent, fontSize: 14,fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                                                                ),
                                                              ),
                                                            ),





                                                          ],



                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(TradingOutside[index].Feacture2 ,style: TextStyle(

                                                              color: Colors.tealAccent, fontSize: 8,fontWeight: FontWeight.bold, decoration: TextDecoration.none),

                                                          ),
                                                        ),


                                                      ],

                                                    ),

                                                  ),
                                                ),
                                                Container(
                                                  // color: Colors.black,
                                                  child:   Text("For further Information Click on Card",
                                                      style: TextStyle(fontSize: 9,color: Colors.orangeAccent,)),
                                                ),
                                                Container(
                                                  child:   Text("${index+1}/${TradingOutside.length}",
                                                      style: TextStyle(fontSize: 13,color: Colors.tealAccent,)),
                                                ),
                                              ],
                                            ),

                                          ),

                                        ),

                                      ),
                                    ),
                                  ]
                              )
                          )
                      ),




                    ],
                  ),

                ),

                Row(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,


                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text("  4.Enjoy Summer  With  \n  You Favourite Online Store     " , style: TextStyle(fontSize: 18,color: Colors.tealAccent,)),
                        )),
                    Icon(Icons.arrow_forward_ios_sharp,color: Colors.tealAccent,),
                  ],
                ),
                Container(
                  // height: MediaQuery.of(context).size.height-380,

                  child:   Stack(

                    children: <Widget>[
                      Container(
 height:300 ,
                          child:Flexible(
                              child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [


                                    Expanded(
                                      child: SizedBox(
                                        //
                                        // height: 275,
                                        width: 400,
                                        child: ListView.builder(
                                          itemCount: ShopingOutside.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context,index)=>
                                          //   Column(
                                          // // children: [
                                          // Link(
                                          //   uri: Uri.parse(Homeadd[index].link),
                                          //   // target: LinkTarget.blank,
                                          //   builder: (context, followLink) =>
                                          GestureDetector(
                                            onTap: ()=>Navigator.pushNamed(context, ShopingOutside[index].goto) ,

                                            child: Column(
                                              children: [

                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child:   Card   (

                                                    shape: RoundedRectangleBorder(

                                                        borderRadius: BorderRadius.circular(10),

                                                        side: BorderSide( color: Colors.tealAccent,width: 1,)

                                                    ),

                                                    color: Colors.black,



                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [

                                                        Row(

                                                          crossAxisAlignment: CrossAxisAlignment.start,

                                                          children: [



                                                            Padding(

                                                              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 4),

                                                              child: Column(
                                                                children: [

                                                                  Container(

                                                                    height: 35,

                                                                    width: 70,

                                                                    margin: EdgeInsets.all(5),


                                                                    decoration: BoxDecoration(



                                                                      border: Border.all(color:Colors.tealAccent,width: 0.5),

                                                                      borderRadius: BorderRadius.circular(5),

                                                                      image:DecorationImage(

                                                                        image: AssetImage(ShopingOutside[index].Image1),

                                                                        // image: NetworkImage('https://indian-retailer.s3.ap-south-1.amazonaws.com/s3fs-public/2021-08/amazonpayinv.png',

                                                                        // ),

                                                                        fit: BoxFit.fill,

                                                                      ),

                                                                      // color: Colors.grey[700],

                                                                    ),

                                                                  ),
                                                                  SizedBox(height: 25,),
                                                                  Container(



                                                                    height: 40,

                                                                    width: 80,

                                                                    margin: EdgeInsets.all(1),

                                                                    child:   Padding(
                                                                      padding: const EdgeInsets.all(3.0),
                                                                      child: Text(ShopingOutside[index].ReferalCode,style: TextStyle(
                                                                          color: Colors.tealAccent, fontSize: 11,fontWeight: FontWeight.bold, decoration: TextDecoration.none)),
                                                                    ),


                                                                    decoration: BoxDecoration(



                                                                      border: Border.all(color:Colors.tealAccent,width: 0.5),

                                                                      borderRadius: BorderRadius.circular(5),

                                                                      color: Colors.black,

                                                                    ),


                                                                  ),

                                                                ],
                                                              ),

                                                            ),

                                                            Padding(

                                                              padding: const EdgeInsets.all(14.0),

                                                              child: Container(



                                                                height: 120,

                                                                width: 190,

                                                                decoration: BoxDecoration(



                                                                  border: Border.all(color:Colors.tealAccent,width: 0),

                                                                  borderRadius: BorderRadius.circular(12),

                                                                  image:DecorationImage(

                                                                    //

                                                                    image: AssetImage(ShopingOutside[index].Image2),

                                                                    fit: BoxFit.fill,

                                                                    //

                                                                  ),

                                                                  color: Colors.black,

                                                                ),

                                                              ),

                                                            ),

                                                          ],

                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: const  EdgeInsets.symmetric(vertical: 0.5,horizontal: 10),
                                                              child: Shimmer.fromColors(
                                                                baseColor: Colors.red,
                                                                highlightColor: Colors.white,
                                                                period:Duration(seconds: 1),
                                                                loop:6 ,
                                                                child: Text(ShopingOutside[index].Feacture1 ,style: TextStyle(

                                                                    color: Colors.tealAccent, fontSize: 13,fontWeight: FontWeight.bold, decoration: TextDecoration.none),
                                                                ),
                                                              ),
                                                            ),





                                                          ],



                                                        ),

                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text(ShopingOutside[index].Feacture2 ,style: TextStyle(

                                                              color: Colors.tealAccent, fontSize: 8,fontWeight: FontWeight.bold, decoration: TextDecoration.none),

                                                          ),
                                                        ),


                                                      ],

                                                    ),

                                                  ),
                                                ),
                                                Container(
                                                  // color: Colors.black,
                                                  child:   Text("For further Information Click on Card",
                                                      style: TextStyle(fontSize: 9,color: Colors.orangeAccent,)),
                                                ),
                                                Container(
                                                  child:   Text("${index+1}/${PaymentMania.length}",
                                                      style: TextStyle(fontSize: 13,color: Colors.tealAccent,)),
                                                ),
                                              ],
                                            ),

                                          ),

                                        ),

                                      ),
                                    ),
                                  ]
                              )
                          )
                      ),




                    ],
                  ),

                ),



              ],
            ),

          ),
        ),
      ),



    );

  }
}
