import 'package:examdart/utils/card.dart';
import 'package:examdart/utils/details.dart';
import 'package:examdart/utils/hopage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      routes: {
         '/':(context)=> Homepage(),
        '/card':(context)=>card(),
        '/details':(context)=>details(),
      },
    ) ;
  }
}





