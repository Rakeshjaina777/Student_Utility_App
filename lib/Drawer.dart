//11
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:freerun/Add_home(3).dart';
import 'package:freerun/Daily_app.dart';
import 'package:freerun/Data_list/Cricket/cricket_Outside_data.dart';
import 'package:freerun/Data_list/Payment/Payment%20ui%20inside.dart';
import 'package:freerun/Data_list/Payment/Payment_mania%20data.dart';
import 'package:freerun/Data_list/Trading/Trading_outside_data.dart';
import 'package:freerun/Home .dart';
import 'package:freerun/Navigation%20bar.dart';
import 'package:freerun/Reward_bar.dart';

class Drawe extends StatelessWidget {
  // const Drawe({Key? key}) : super(key: key);

  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'Rakesh Jain ';
    final email = 'Rakeshjaina07@gmail';
    final urlImage =
        'Assests/Ajio/Drawer_1.jpg';

    return Container(
      width: 260,
      child: Drawer(
        child: Material(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => UserPage(
                    name: 'Rakesh Jain',
                    urlImage: urlImage,
                  ),
                )
                ),
              ),
              Container(
                padding: padding,
                child: Column(
                  children: [
                    // const SizedBox(height: 5),
                    // buildSearchField(),
                    Divider(color: Colors.tealAccent),
                    // const SizedBox(height: 24),
                    buildMenuItem(
                      text: 'Earn by installing  APP',
                      icon: Icons.local_fire_department,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Reward',
                      icon: Icons.volunteer_activism,
                      onClicked: () => selectedItem(context, 1),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Movie &Series',
                      icon: Icons.play_arrow_outlined,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'App',
                      icon: Icons.android,
                      onClicked: () => selectedItem(context, 3),
                    ),
                    const SizedBox(height: 24),
                    Divider(color: Colors.tealAccent),
                    const SizedBox(height: 14),

                    Text("👀 Recomended App",style: TextStyle(fontSize: 20, color: Colors.tealAccent),),
                    const SizedBox(height: 24),

                    RecomendedApp(
                      text: 'Get Flat ₹40 \ninstant cashback from P.S',
                      Image: PaymentMania[0].Image1,
                      onClicked: () => selectedItem(context, 4),
                    ),


                    const SizedBox(height: 24),

                    RecomendedApp(
                      text: 'Earn upto 400\ninstant cashback from P.s',
                      Image: TradingOutside[0].Image1,
                      onClicked: () => selectedItem(context, 5),
                    ),


                    const SizedBox(height: 24),
                    const SizedBox(height: 24),

                    RecomendedApp(
                      text: 'Earn upto 500\ninstant cashback',
                      Image: TradingOutside[1].Image1,
                      onClicked: () => selectedItem(context, 4),
                    ),

                    const SizedBox(height: 24),
                    const SizedBox(height: 24),

                    RecomendedApp(
                      text: 'Earn upto 500\ninstant cashback',
                      Image: TradingOutside[3].Image1,
                      onClicked: () => selectedItem(context, 4),
                    ),

                    const SizedBox(height: 24),
                    const SizedBox(height: 24),

                    RecomendedApp(
                      text: 'Earn upto 200\ninstant cashback',
                      Image: CricketOutside[0].Image1,
                      onClicked: () => selectedItem(context, 6),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [

              CircleAvatar(radius: 30,

                backgroundColor:Colors.black,
                child: Icon(Icons.person,color: Colors.tealAccent,size: 39,),

              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.tealAccent),
                  ),
                  const SizedBox(height: 4),

                     Container(

                       child: AutoSizeText (
                           // fit: BoxFit.contain,
                          // child: SingleChildScrollView(
                          //   scrollDirection: Axis.horizontal,
                          //   child: Text(

                              email,
                         presetFontSizes:[12,10],
                              maxLines: 2,
                              style: TextStyle( color: Colors.tealAccent),
                              overflow: TextOverflow.ellipsis,
                            ),
                     ),

                      // ),

                  // ),

                ],
              ),
              Spacer(),

            ],
          ),
        ),
      );

  // Widget buildSearchField() {
  //   final color = Colors.tealAccent;
  //
  //   return TextField(
  //     style: TextStyle(color: color),
  //     decoration: InputDecoration(
  //       contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  //       hintText: 'Search',
  //       hintStyle: TextStyle(color: color),
  //       prefixIcon: Icon(Icons.search, color: color),
  //       filled: true,
  //       fillColor: Colors.white12,
  //       enabledBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(5),
  //         borderSide: BorderSide(color: color.withOpacity(0.7)),
  //       ),
  //       focusedBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(5),
  //         borderSide: BorderSide(color: color.withOpacity(0.7)),
  //       ),
  //     ),
  //   );
  // }

  Widget RecomendedApp(
      {
        required var Image ,
        required var text,
        VoidCallback? onClicked,
      }
      ){
    return
      Padding(
        padding: const EdgeInsets.all(5.0),

          child: GestureDetector(
            onTap: onClicked,
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 60,
                  // color: Colors.red,
                  decoration: BoxDecoration(



                    border: Border.all(color:Colors.tealAccent,width: 0.5),

                    borderRadius: BorderRadius.circular(5),

                    image:DecorationImage(

                      image: AssetImage(Image),


                      fit: BoxFit.fill,

                    ),
                  ),
                ),
                const SizedBox(width: 24),
                // Expanded(
                //   child: SingleChildScrollView(
                //   scrollDirection : Axis.horizontal,
                Expanded(
                  child: FittedBox(
                    fit : BoxFit.contain,
                      child: Text(text,style: TextStyle(
                        color: Colors.tealAccent,fontSize:16,fontWeight: FontWeight.bold, )
                      // ,maxLines: 2,
                      ),
                    ),
                ),
                // )
              ],
            ),
          ),

      );


  }



  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.tealAccent;
    final hoverColor = Colors.tealAccent;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Add_bar(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Reward(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NavigationBa(),
        ));
        break;
      case 3:
        Navigator.pushNamed(context, "/Gpay")
        ;
        break;
      case 4 :
        Navigator.pushNamed(context, "/AmazonPay")
        ;
        break;

      case 5 :
        Navigator.pushNamed(context, "/Groww")
        ;
        break;
      case 6 :
        Navigator.pushNamed(context, "/Dream11")
        ;
        break;


    }
  }
}




class UserPage extends StatelessWidget {
  final String name;
  final String urlImage;



  const UserPage({
    Key? key,
    required this.name,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text(name),
      centerTitle: true,
    ),
    body: Image.asset(
      urlImage,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    ),
  );
}
