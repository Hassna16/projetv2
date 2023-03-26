import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  @override
  _ApiState createState() => _ApiState();
}




class _ApiState extends State<Api> {
  String id = "";



  void meilleursid() async {
    print('Debut');
    try{

      const url =
          'https://api.steampowered.com/ISteamChartsService/GetMostPlayedGames/v1/';
      final uri = Uri.parse(url);
      final response = await http.get(uri);
      final body = response.body;
      final json = jsonDecode(body)['response']['ranks'];
      setState(() {
        id = json['appid'];
      });
      print(id);

    }catch(err, trace){
      print(err);
    }

  }

  @override
  void initState() {
    super.initState();
    meilleursid(); // appel automatique de la fonction lors de l'initialisation de l'interface utilisateur
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: id.length,
        itemBuilder: (context, index){
          final rank = id;
          return ListTile(
            title : Text('$id'),
          );
        },
      ),

    );
  }
}