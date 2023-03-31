import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projetv2/description.dart';

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  _ApiState createState() => _ApiState();
}



class _ApiState extends State<Api> {
  List<dynamic> id = [];
  List<game> jeu = List.generate(100, (index) => game('', '', '', '', '', ''));

  get maxIntrinsicHeight => null;



  void meilleursid() async {
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
      donnees();
    } catch(err, trace){

    }
  }

//Récupération des données de l'API

  void donnees() async {

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

  }



  @override
  void initState() {
    super.initState();
    meilleursid();
    //Appel automatique de la fonction lors de l'initialisation de l'interface utilisateur
  }


//Liste des jeux

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: id.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color.fromRGBO(57, 72, 80, 1.0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          height: 80,
                          child: Image.network(jeu[index].image)
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(jeu[index].nom, textAlign:TextAlign.left, style : const TextStyle(color:Colors.white, fontSize: 15.27,fontFamily: 'Proxima Nova',)),
                          Text(jeu[index].editeur+'\n'+jeu[index].prix, textAlign:TextAlign.left, style : const TextStyle(color:Colors.white, fontSize: 12, fontFamily: 'Proxima Nova',)),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 100,
                  width: 100,
                  child: TextButton(
                    onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Description (title: 'Description')),
                    );
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white, shape: const ContinuousRectangleBorder(),
                      backgroundColor:const Color.fromRGBO(97, 104, 237, 1.0),
                    ),
                    child: const Text('En savoir plus',textAlign: TextAlign.center, style :
                    TextStyle(
                      fontFamily:"Proxima Nova",
                      fontSize: 18.79,
                    ),
                    ),
                  ),

                ),
              ],
            ),
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