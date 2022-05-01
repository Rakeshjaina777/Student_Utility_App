
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freerun/Movie.dart';
import 'package:freerun/Navigation%20bar.dart';

void main() {
  runApp( MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      title: "PrimeStar",
      darkTheme: ThemeData(
        primaryColor:Colors.tealAccent,


          // textSelectionColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(color:Colors.white, fontSize: 25,fontWeight: FontWeight.w500)
        ),
        brightness:Brightness.dark,
// backgroundColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
         themeMode: ThemeMode.dark,


      debugShowCheckedModeBanner: false,

      home:NavigationBa(),

    );


  }
}
