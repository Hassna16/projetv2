import 'package:flutter/material.dart';
import 'package:projetv2/pageaccueil.dart';
import 'package:projetv2/pageinscription.dart';


class Connexion extends StatefulWidget {
  const Connexion({super.key, required this.title});


  final String title;

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

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
//Page de Connexion
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

            const SizedBox.square(
              dimension: 50.0,
            ),
            const Text( 'Bienvenue !',
                style: TextStyle(
                  fontWeight : FontWeight.w600,
                  color: Colors.white,
                  fontSize:40,


                ),

            ),
            const SizedBox.square(
              dimension: 20.0,
            ),
    const SizedBox(
    height:70,
    width: 180,
    child  : Text("Veuillez vous connecter ou créer un nouveau "
        "compte pour utiliser l'application.",
        style: TextStyle(
          color: Colors.white,
          fontSize:15,),
              textAlign: TextAlign.center,

            )),

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
                      children: const [
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
// MOT DE PASSE
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
              dimension: 100.0,
            ),

            SizedBox(
                height: 45,
                width: 1500,
                child  :TextButton(
                    onPressed: (

                        ) {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Accueil (title: 'Accueil')),
                    );},
                    child: Row(
                      children: [
                        Expanded(child: Text('Se connecter',textAlign: TextAlign.center)),

                      ],
                    ),  style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor:Color.fromRGBO(97, 104, 237, 1.0),
                ))),


            SizedBox.square(
              dimension: 10.0,
            ),

            SizedBox(
                height: 45,
                width: 1500,
                child  :TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Inscription(title: 'Inscription')),
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(child: Text('Créer un nouveau compte',textAlign: TextAlign.center)),

                      ],
                    ),  style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  side : BorderSide(color : Color.fromRGBO(97, 104, 237, 1.0)),
                  backgroundColor: Colors.transparent,
                ))),

            SizedBox.square(
              dimension: 200.0,
            ),


            const Text("Mot de passe oublié",
              style : TextStyle(
                decoration :TextDecoration.underline,
                color : Colors.white60,

              ),
              textAlign: TextAlign.center,

            ),






          ],
        ),

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    ),

    );}

}
