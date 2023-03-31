import 'package:flutter/material.dart';
import 'package:projetv2/pageaccueil.dart';


class Inscription extends StatefulWidget {
  const Inscription({super.key, required this.title});


  final String title;

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.black87,
        body:Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/fonddecran.png"),
                fit: BoxFit.cover,)),
          child:
          Column(
              children : const [
                titre_page(),
                champs_inscription(),
                btn_inscription(),

              ]),
        ),)
    ;}

}


class titre_page extends StatelessWidget {
  const titre_page({Key? key}) : super(key: key);

        @override
        Widget build(BuildContext context) {
        return Align(
          alignment: Alignment.topCenter,

          child: FractionallySizedBox(
            widthFactor: 0.8,


            child: Column(


              mainAxisSize: MainAxisSize.min,
              children: const[

                 SizedBox.square(
                  dimension: 50.0,
                ),
                Text( 'Inscription',
                  style: TextStyle(
                    fontWeight : FontWeight.bold,
                    fontFamily: "Google Sans",
                    color: Colors.white,
                    fontSize:30.53,


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
                        fontFamily: "Proxima Nova",
                        fontSize:15.27,),
                      textAlign: TextAlign.center,

                    )),

                SizedBox.square(
                  dimension: 30.0,
                ),
        ]),),);
        }}

class champs_inscription extends StatelessWidget {
  const champs_inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,

      child: FractionallySizedBox(
        widthFactor: 0.8,


        child: Column(


          mainAxisSize: MainAxisSize.min,
          children: <Widget>[



                SizedBox(
                    height: 45,
                    width: 2000,

                    child  :TextButton(
                        onPressed: () {},style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                      backgroundColor: const Color.fromRGBO(30, 38, 44, 1.0),
                    ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Expanded(child: TextField(
                              textAlign : TextAlign.center,
                              decoration : InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color : Colors.transparent)
                                ),


                                hintText: "Nom d'utilisateur",
                                hintStyle : TextStyle(color: Colors.white, fontFamily: 'Proxima Nova', fontSize:15.24), ),
                              autofocus: false,

                              cursorColor: Colors.white,

                            ),
                            )],
                        ))),

                const SizedBox.square(
                  dimension: 10.0,
                ),
// E-Mail
                SizedBox(
                    height: 45,
                    width: 2000,

                    child  :TextButton(
                        onPressed: () {},style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                      backgroundColor: const Color.fromRGBO(30, 38, 44, 1.0),
                    ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Expanded(child: TextField(
                              textAlign : TextAlign.center,
                              decoration : InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color : Colors.transparent)
                                ),


                                hintText: 'E-Mail',
                                hintStyle : TextStyle(color: Colors.white, fontFamily: 'Proxima Nova', fontSize:15.24), ),
                              autofocus: false,

                              cursorColor: Colors.white,

                            ),
                            )],
                        ))),


                const SizedBox.square(
                  dimension: 10.0,
                ),

                SizedBox(
                    height: 45,
                    width: 2000,

                    child  :TextButton(
                        onPressed: () {},style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                      backgroundColor: const Color.fromRGBO(30, 38, 44, 1.0),
                    ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Expanded(child: TextField(
                              textAlign : TextAlign.center,
                              obscureText: true,
                              decoration : InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color : Colors.transparent)
                                ),


                                hintText: 'Mot de passe',
                                hintStyle : TextStyle(color: Colors.white, fontFamily: 'Proxima Nova', fontSize:15.24), ),
                              autofocus: false,

                              cursorColor: Colors.white,

                            ),
                            )],
                        ))),


                const SizedBox.square(
                  dimension: 10.0,
                ),

                SizedBox(
                    height: 45,
                    width: 2000,

                    child  :TextButton(
                        onPressed: () {},style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                      backgroundColor: const Color.fromRGBO(30, 38, 44, 1.0),
                    ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Expanded(child: TextField(
                              textAlign : TextAlign.center,
                              obscureText: true,
                              decoration : InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color : Colors.transparent)
                                ),


                                hintText: 'Vérification du mot de passe',
                                hintStyle : TextStyle(color: Colors.white, fontFamily: 'Proxima Nova', fontSize:15.24), ),
                              autofocus: false,

                              cursorColor: Colors.white,

                            ),
                            )],
                        ))),

                const SizedBox.square(
                  dimension: 80.0,
                ),
          ]),),);
  }}


class btn_inscription extends StatelessWidget {
  const btn_inscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,

      child: FractionallySizedBox(
        widthFactor: 0.8,


        child: Column(


          mainAxisSize: MainAxisSize.min,
          children: <Widget>[


                SizedBox(
                    height: 45,
                    width: 1500,
                    child  :TextButton(
                        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const Accueil(title: 'Accueil')),
                        );},  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white, shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      backgroundColor:const Color.fromRGBO(99, 106, 246, 1.0),
                    ),
                        child: Row(
                          children: const [
                            Expanded(child: Text("S'inscrire",
                                style: TextStyle(
                                  color: Colors.white,
                                    fontFamily: 'Proxima Nova', fontSize:15.24),
                                textAlign: TextAlign.center)
                            ),


                          ],
                        ))),





          ]),),);
  }}
