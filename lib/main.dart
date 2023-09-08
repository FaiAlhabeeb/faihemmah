import 'package:flutter/material.dart';
import 'package:faihemmah/pages/aboutUs.dart';
//import 'package:faihemmah/pages/editProfileCompany.dart';
import 'package:faihemmah/pages/viewProfileCompany.dart';
import'package:faihemmah/pages/settings.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}):super(key:key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute:'/' ,
    routes: {
'/' : (context) => const   aboutUs(),  
'/viewProfileCompany': (context) => const  viewProfileCompany(),      
// '/settings':(context) => const  EditProfileCompany(), 
'/aboutUs':(context) => const settings()   ,

    }
    );
  }
}