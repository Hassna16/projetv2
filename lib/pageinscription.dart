import 'package:flutter/material.dart';
import 'package:projetv2/pageaccueil.dart';


class Inscription extends StatefulWidget {
  const Inscription({super.key, required this.title});


  final String title;

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {

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


    return Scaffold(
        backgroundColor: Colors.black87,
        body:
        Align(
          alignment: Alignment.topCenter,

          child: FractionallySizedBox(
            widthFactor: 0.8,


            child: Column(


              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                SizedBox.square(
                  dimension: 50.0,
                ),
                Text( 'Inscription',
                  style: TextStyle(
                    fontWeight : FontWeight.w600,
                    color: Colors.white,
                    fontSize:40,


                  ),

                ),
                SizedBox.square(
                  dimension: 20.0,
                ),
                SizedBox(
                    height:70,
                    width: 300,
                    child  : Text("Veuillez saisir ces différentes informations, "
                        "afin que vos listes soient sauvegardées.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:15,),
                      textAlign: TextAlign.center,

                    )),

                SizedBox.square(
                  dimension: 30.0,
                ),
                SizedBox(
                    height: 45,
                    width: 2000,

                    child  :TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: TextField(
                              textAlign : TextAlign.center,
                              decoration : InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color : Colors.transparent)
                                ),


                                hintText: "Nom d'utilisateur",
                                hintStyle : TextStyle(color: Colors.white, fontSize: 14), ),
                              autofocus: false,

                              cursorColor: Colors.white,

                            ),
                            )],
                        ),style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                      backgroundColor: Color.fromRGBO(60, 63, 65, 1.0),
                    ))),

                SizedBox.square(
                  dimension: 10.0,
                ),
// E-Mail
                SizedBox(
                    height: 45,
                    width: 2000,

                    child  :TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: TextField(
                              textAlign : TextAlign.center,
                              decoration : InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color : Colors.transparent)
                                ),


                                hintText: 'E-Mail',
                                hintStyle : TextStyle(color: Colors.white, fontSize: 14), ),
                              autofocus: false,

                              cursorColor: Colors.white,

                            ),
                            )],
                        ),style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                      backgroundColor: Color.fromRGBO(60, 63, 65, 1.0),
                    ))),


                SizedBox.square(
                  dimension: 10.0,
                ),

                SizedBox(
                    height: 45,
                    width: 2000,

                    child  :TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: TextField(
                              textAlign : TextAlign.center,
                              obscureText: true,
                              decoration : InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color : Colors.transparent)
                                ),


                                hintText: 'Mot de passe',
                                hintStyle : TextStyle(color: Colors.white, fontSize: 14), ),
                              autofocus: false,

                              cursorColor: Colors.white,

                            ),
                            )],
                        ),style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                      backgroundColor: Color.fromRGBO(60, 63, 65, 1.0),
                    ))),


                SizedBox.square(
                  dimension: 10.0,
                ),

                SizedBox(
                    height: 45,
                    width: 2000,

                    child  :TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(child: TextField(
                              textAlign : TextAlign.center,
                              obscureText: true,
                              decoration : InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color : Colors.transparent)
                                ),


                                hintText: 'Vérification du mot de passe',
                                hintStyle : TextStyle(color: Colors.white, fontSize: 14), ),
                              autofocus: false,

                              cursorColor: Colors.white,

                            ),
                            )],
                        ),style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                      backgroundColor: Color.fromRGBO(60, 63, 65, 1.0),
                    ))),

                SizedBox.square(
                  dimension: 80.0,
                ),

                SizedBox(
                    height: 45,
                    width: 1500,
                    child  :TextButton(
                        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Accueil(title: 'Accueil')),
                        );},
                        child: Row(
                          children: [
                            Expanded(child: Text("S'inscrire",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:17,),
                                textAlign: TextAlign.center)
                            ),


                          ],
                        ),  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor:Color.fromRGBO(97, 104, 237, 1.0),
                    ))),





              ],
            ),

          ),
          // This trailing comma makes auto-formatting nicer for build methods.
        ));}}
