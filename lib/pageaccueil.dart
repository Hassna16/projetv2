import 'package:flutter/material.dart';


class Accueil extends StatefulWidget {
  const Accueil({super.key, required this.title});


  final String title;

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {

  bool favoris = false;
  bool star = false;


  void Fav (){
    setState(() {


      if (favoris){
        favoris=false;
      }
      else {
        favoris= true;
      }
    });
  }
  void etoile(){
    setState(() {


      if (star){
        star=false;
      }
      else {
        star= true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {

    // Page Accueil

    return Scaffold(
        appBar: AppBar(
          backgroundColor : Colors.black87,
          title: Text("Accueil"),
          centerTitle: false,
          actions: [
            IconButton(
              icon: favoris ? Icon(Icons.favorite): Icon(Icons.favorite_border_outlined),
              onPressed: Fav,
            ),
            IconButton(
              onPressed: etoile,
              icon: star ? Icon(Icons.star) : Icon(Icons.star_border_outlined),
            )
          ],
        ),
        backgroundColor: Colors.black87,
        body:
        Stack(
            children : [



              Container (
                height: 300,
                width: MediaQuery.of(context).size.width,

                child :
                Container(
                  margin: EdgeInsets.only(top:70),
                  decoration : BoxDecoration(
                      image : DecorationImage(
                        image : NetworkImage("https://i0.wp.com/www.conseilbourse.fr/wp-content/uploads/2021/11/best-of-jeux-video-2014-top_041A02BC01617483.jpg?resize=1024%2C683&ssl=1"
                        ),
                        fit : BoxFit.cover,
                      )
                  ),


                  child :
                  Stack(
                      children: [

                        PositionedDirectional(

                          start: 25,
                          top: 80,
                          width: 250,

                          child :



                          Text("Titan Fall 2 ""Ultimate Edition",


                            style: TextStyle(

                              fontWeight : FontWeight.w600,
                              color: Colors.white,
                              fontSize:30,
                            ),
                          ),),

                        Positioned.directional(
                          textDirection: Directionality.of(context),
                          start: 25,

                          top: 150,

                          child :

                          Text("DESCRIPTION",



                            style: TextStyle(

                              fontWeight : FontWeight.w600,
                              color: Colors.white,
                              fontSize:10,
                            ),
                          ),),
                        Positioned.directional(
                            textDirection: Directionality.of(context),
                            start: 25,
                            top: 190,
                            width: 150,

                            child  :TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Expanded(child: Text('En savoir plus',textAlign: TextAlign.center)),

                                  ],
                                ),  style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                                backgroundColor:Color.fromRGBO(97, 104, 237, 1.0)
                            ))
                        ),]
                  ),

                ),

              ),
              Padding(
                padding: EdgeInsets.only(top:320),
                child :
                Wrap(

                    children : [
                      //Meilleures Ventes

                      Container(
                        alignment: Alignment.centerLeft,

                        child :

                        Container (
                          padding: EdgeInsets.only(left : 25),
                          child :


                          Text("Les meilleures ventes",

                            style: TextStyle(
                              decoration :TextDecoration.underline,
                              color: Colors.white,
                              fontSize:20,
                            ),
                          ),),
                      ),


                    ]
                ),),
                ListView(

          children :[ ListTile(
              title: Text("Nom du jeu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:10,
                  )),
              leading : CircleAvatar(
                child: Text(
                  "OK",
                ),
              ),
                trailing : Icon(Icons.visibility),
            ),
      ]

    ),



              //Big composant Barre recherche jeu
              Align(
                  alignment: Alignment.topCenter,
                  child: FractionallySizedBox(
                      widthFactor: 0.95,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          //Escape entre app bar et barre de recherche
                          SizedBox.square(
                            dimension: 10.0,
                          ),
                          //Barre de recherche
                          SizedBox(
                              height: 45,
                              width: 2000,
                              child  :TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(child: TextField(
                                          decoration : InputDecoration(
                                              focusedBorder: UnderlineInputBorder(
                                                  borderSide: BorderSide(color : Colors.transparent)
                                              ),


                                              hintText: 'Rechercher un jeu...'),
                                          autofocus: false,
                                          cursorColor: Colors.black,

                                          style:

                                          TextStyle(color : Colors.black,)),
                                      )],
                                  ),style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                                backgroundColor: Color.fromRGBO(60, 63, 65, 1.0),
                              ))),

                        ],)
                  )),
            ]
        )
    );

  }
}