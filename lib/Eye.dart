
import 'package:flutter/material.dart';
import 'package:freerun/Data_list/home_add_data.dart';
import 'package:url_launcher/link.dart';

class Eye extends StatelessWidget {
  const Eye({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(


      child: SingleChildScrollView(
        child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("   Information ⚡⚡⚡", style: TextStyle(
                  color: Colors.orangeAccent, fontSize: 19,)),
              ),


              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 175,


                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(45)

                  ),

                  // Padding(
                  //   padding: const EdgeInsets.all(12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                        "🎈Befor starting stream please click min 2-min 3 Add or u can downolad min 1 app (from our App )"
                            " It will help to recover our surver cost easily ,so we can make these app adds And subscribtion free 😊😉😎😃  ", style: TextStyle(
                      color: Colors.orangeAccent, fontSize: 18,)
                    ),
                  ),
                ),

              ),







              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 145,


                  decoration: BoxDecoration(
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
                      color: Colors.orangeAccent, fontSize: 18,)
                    ),
                  ),
                ),

              ),




        Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 150,


          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(45)

          ),

          // Padding(
          //   padding: const EdgeInsets.all(12.0),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
               "🎈Most of the Movie website asked you to downolad app and take to other website on click(which is not neccessary) "
          "u can avoid these by seen given video downsides", style: TextStyle(
          color: Colors.orangeAccent, fontSize: 18,)
              ),
            ),
          ),

        ),

          SizedBox(
          //

          height: 500,
      width: 400,

          child: ListView.builder(
              itemCount: Homeadd.length,
      // scrollDirection: Axis.horizontal,
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

      height: 150,
      width: 300,
      margin: EdgeInsets.all(9),




      decoration: BoxDecoration(


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
