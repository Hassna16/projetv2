import 'package:flutter/material.dart';
import 'package:projetv2/pageconnexion.dart';
//import 'testgpt.dart';
//import 'package:projetv2/api.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STEAM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home : const Connexion(  title: "Connexion",),
      //home : const Like (title: "ACC",),

      //home:  Api(),//Pour tester codes chatgpt,


    );
  }
}

