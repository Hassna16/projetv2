import 'package:flutter/material.dart';
import 'package:projetv2/pageconnexion.dart';
//import 'testgpt.dart';


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
      home : Connexion(  title: "Connexion",),
      //home:  Appli( ),Pour tester codes chatgpt


    );
  }
}

