
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freerun/Add_home(3).dart';
import 'package:freerun/Cricket/dream11.dart';
import 'package:freerun/Cricket/fab11.dart';
import 'package:freerun/Cricket/mpl.dart';
import 'package:freerun/Cricket/my%20circle11.dart';
import 'package:freerun/Cricket/vision11.dart';
import 'package:freerun/Cricket/winzo.dart';


import 'package:freerun/Daily_app.dart';
import 'package:freerun/Online_Shoping_goto/Ajio.dart';
import 'package:freerun/Online_Shoping_goto/Amazon.dart';
import 'package:freerun/Online_Shoping_goto/Flipkart.dart';
import 'package:freerun/Online_Shoping_goto/Myntra.dart';
import 'package:freerun/Payment%20mania%20inside/Amazon_Pay.dart';
import 'package:freerun/Payment%20mania%20inside/Gpay.dart';
import 'package:freerun/Home .dart';
import 'package:freerun/Navigation%20bar.dart';
import 'package:freerun/Payment%20mania%20inside/Mobikwiki.dart';
import 'package:freerun/Payment%20mania%20inside/Paytm.dart';
import 'package:freerun/Payment%20mania%20inside/Phonepe.dart';
import 'package:freerun/Trading_goto/Edelweiss.dart';
import 'package:freerun/Trading_goto/Groww.dart';
import 'package:freerun/Trading_goto/IIfl.dart';
import 'package:freerun/Trading_goto/UpStock.dart';


const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    'This channel is used for important notifications.', // description
    importance: Importance.high,
    playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();


  print('A bg message just showed up :  ${message.messageId}');
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark
  );
}


//
// Future initialization(BuildContext? context) async {
//
//   await Future.delayed(Duration(seconds:2));
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      title: "PrimeStar👀",
      darkTheme: ThemeData(
        primaryColor:Colors.tealAccent,


          // textSelectionColor: Colors.white,
        // textTheme: TextTheme(
        //   headline1: TextStyle(color:Colors.white, fontSize: 25,fontWeight: FontWeight.w500)
        // ),
        brightness:Brightness.dark,
// backgroundColor: Colors.black,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
         themeMode: ThemeMode.dark,


      debugShowCheckedModeBanner: false,




      home:NavigationBa(),
      //
      //   home: AnimatedSplashScreen(
      //     splash: Image.asset('assests/1024.png'),
      //     nextScreen: welcome(),
      //     splashTransition: SplashTransition.rotationTransition,
      //     // pageTransitionType: PageTransitionType.scale,
      //     backgroundColor: Colors.amberAccent,
      //     duration: 400,
      //
      //   ),
        // ini


        routes:{
          "/AmazonPay":(context)=>AmazonPay(),
          "/Gpay":(context)=>Gpay(),
          "/Phonepe":(context)=>Phonepe(),
          "/Paytm":(context)=>Paytm(),
          "/Mobikwiki":(context)=>Mobikwiki(),

          "/Dream11":(context)=>Dream11(),
          "/Fab11":(context)=>Fab11(),
          "/Mpl":(context)=>Mpl(),
          "/My circle11":(context)=>Mycircle11(),
          "/Vision11":(context)=>Vision11(),
          "/Winzo":(context)=>Winzo(),

          "/Groww":(context)=>Groww(),
          "/UpStock":(context)=>UpStock(),
          "/IIfl":(context)=>IIfl(),
          "/Edelweiss":(context)=>Edelweiss(),

          "/Ajio":(context)=>Ajio(),
          "/Amazon":(context)=>Amazon(),
          "/Flipkart":(context)=>Flipkart(),
          "/Myntra":(context)=>Myntra(),







          // "/2":(context)=> (),
          // "/Login":(context)=> Login(),
          // "/Home":(context)=>HomePage(),
          // "/Links":(context)=> Website(),
        }

    );


  }
}
