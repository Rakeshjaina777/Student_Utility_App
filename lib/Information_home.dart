
import 'package:flutter/material.dart';
import 'package:freerun/Data_list/home_add_data.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/link.dart';

class Eye extends StatelessWidget {
  const Eye({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
height: 400,

      child: SingleChildScrollView(
        child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Shimmer.fromColors(
                  baseColor: Colors.orangeAccent,
                  highlightColor: Colors.white,
                  period:Duration(seconds: 1),
                  loop:5 ,
                  child: Text("   Information ⚡⚡⚡", style: TextStyle(
                    color: Colors.orangeAccent, fontSize: 19,)),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 185,


                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(45)

                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Shimmer.fromColors(
                      baseColor: Colors.redAccent,
                      highlightColor: Colors.white,
                      period:Duration(seconds: 1),
                      loop:2,
                      child: Text(
                          "⚡  Please Downolad minium 2-3 App From Recomended section Or Make Money column with Our Referal code.\nIt will Help Alot To recover Our Surver "
                              "Cost ,So we can Provide More Good Earning App  to You For Free ", style: TextStyle(
                        color: Colors.redAccent, fontSize: 17,)
                      ),
                    ),
                  ),
                ),

              ),



        Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 160,


          decoration: BoxDecoration(
              border: Border.all(color: Colors.orange),
              color: Colors.black,
              borderRadius: BorderRadius.circular(45)

          ),

          // Padding(
          //   padding: const EdgeInsets.all(12.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
               "⚡Most of the Movie website asked you to downolad app and take to other website on click(which is not neccessary) "
          "u can avoid these by seen given video downsides", style: TextStyle(
          color: Colors.redAccent, fontSize: 18,)
              ),
            ),
          ),

        ),

          SizedBox(
          //

          height: 900,
      width: 400,

          child: ListView.builder(
              itemCount: Homeadd.length,
      // scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context,index)=>
              Link(
              uri: Uri.parse(Homeadd[index].link),
      // target: LinkTarget.blank,
      builder: (context, followLink) =>
      GestureDetector(
      onTap:  followLink,

      // child: Column(
      // children: [

      child: Container(

      height: 160,
      width: 300,
      margin: EdgeInsets.all(9),




      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(12),
      image:DecorationImage(
      image: AssetImage(Homeadd[index].Image),
      fit: BoxFit.cover,

      ),

      color: Colors.black,


      ),

      ),





      // ),
      // ],
      // )
      ),),),
          ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 145,


                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(45)

                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                        "🎈Some Website and App might  not work for some Period of time  "
                            "So please join our youtube channel for  further update(Not mandatory) ", style: TextStyle(
                      color: Colors.redAccent, fontSize: 18,)
                    ),
                  ),
                ),

              ),


              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 130,


                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(45)

                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                       " ⚡LEGAL :\n                   WE ARE NOT OFFICIAL DEVELOPERS OF Any of these App & Website . THIS App IS MADE FOR EDUCATIONAL PURPOSES ONLY.", style: TextStyle(
                      color: Colors.redAccent, fontSize: 17,)
                    ),
                  ),
                ),

              ),


            ],
          ),
      //     ),
      // ],
      //
      // ),


      ),
    );
  }
}
