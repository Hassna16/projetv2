import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projetv2/description.dart';

class Api extends StatefulWidget {
  @override
  _ApiState createState() => _ApiState();

}



class _ApiState extends State<Api> {
  List<dynamic> id = [];
  List<game> jeu = List.generate(100, (index) => game('', '', '', '', '', ''));

  get maxIntrinsicHeight => null;



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
  id = json.map((item) => item['appid'].toString()).toList();
  });
  print(id);
  donnees();
  } catch(err, trace){
  print(err);
  }
  }

  void donnees() async {
  print('Debut');
  for (int i = 0; i <= 99; i++) {
  try {

  final url = 'https://store.steampowered.com/api/appdetails?appids=' + id[i];
  final uri = Uri.parse(url);
  final response = await http.get(uri);
  final body = response.body;
  final json = jsonDecode(body)[id[i]]['data'];
  setState(() {
  jeu[i].rang = (i+1).toString();
  jeu[i].nom = json['name'].toString();
  jeu[i].editeur = json['publishers'][0].toString();
  jeu[i].prix = json['is_free'].toString();
  if(jeu[i].prix=='true'){
  jeu[i].prix='free';
  }
  else{
  jeu[i].prix='Payant';
  }
  jeu[i].image = json['header_image'].toString();
  jeu[i].description = json['detailed_description'].toString();
  });
  } catch (err, trace) {
  print(err);
  }
  }
  print('fin');
  }



  @override
  void initState() {
  super.initState();
  meilleursid();
  // appel automatique de la fonction lors de l'initialisation de l'interface utilisateur
  }




  @override
  Widget build(BuildContext context) {
  return Container(
  height : 300,
  child: ListView.builder(
  itemCount: id.length,
  itemBuilder: (context, index) {
  return ListTile(
  leading: Image.network(jeu[index].image),
  title: Text(jeu[index].nom, style : TextStyle(color:Colors.white, fontSize: 15.27,fontFamily: 'Proxima Nova',)),
  subtitle: Text(jeu[index].editeur+'\n'+jeu[index].prix, style : TextStyle(color:Colors.white, fontSize: 12, fontFamily: 'Proxima Nova',)),
  trailing: Container(
  decoration: BoxDecoration(
  color: Colors.red,
  ),
  child: Text('En savoir plus', style: TextStyle(color: Colors.white)),
  ),
  onTap: () {
  Description(title: 'description',);// Navigate to a new screen to display the game details
  },
  );
  },
  ),
  );
  }
}

class game{
  String rang;
  String nom;
  String editeur;
  String prix;
  String image;
  String description;

  game(
  this.rang,
  this.nom,
  this.editeur,
  this.prix,
  this.image,
  this.description,
  );

}