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

  @override
  Widget build(BuildContext context) {
//Page de Connexion
    return Scaffold(

      body:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/fonddecran.png"),
              fit: BoxFit.cover,)),
        child:
        Column(
            children : const [
              titre_page(),
              champs_connexion(),
              mdp(),
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
            Text( 'Bienvenue !',
              style: TextStyle(
                fontFamily: 'Google Sans',
                fontWeight : FontWeight.w600,
                color: Colors.white,
                fontSize:30.53,
              ),

            ),
            SizedBox.square(
              dimension: 20.0,
            ),
            SizedBox(
                height:60,
                width: 190,
                child  : Text("Veuillez vous connecter ou créer un nouveau "
                    "compte pour utiliser l'application.",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Proxima Nova',
                    fontSize:15.27,
                  ),
                  textAlign: TextAlign.center,

                )),


      ]),),
// This trailing comma makes auto-formatting nicer for build methods.
    );

  }}

class champs_connexion extends StatelessWidget {
  const champs_connexion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
alignment: Alignment.topCenter,

child: FractionallySizedBox(
widthFactor: 0.8,


child: Column(


mainAxisSize: MainAxisSize.min,
children: <Widget>[

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


hintText: 'E-mail',
hintStyle : TextStyle(color: Colors.white, fontFamily: 'Proxima Nova',
  fontSize:15.24), ),

autofocus: false,

cursorColor: Colors.white,

),
)],
),style: OutlinedButton.styleFrom(
primary: Colors.white,
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
backgroundColor: Color.fromRGBO(30, 38, 44, 1.0),
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
hintStyle : TextStyle(color: Colors.white, fontFamily: 'Proxima Nova',
  fontSize:15.24), ),
autofocus: false,

cursorColor: Colors.white,

),
)],
),style: OutlinedButton.styleFrom(
primary: Colors.white,
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
  backgroundColor: Color.fromRGBO(30, 38, 44, 1.0),
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
Expanded(child: Text('Se connecter',textAlign: TextAlign.center, style:
TextStyle(fontFamily: 'Proxima Nova', fontSize:15.24))),

],
),  style: OutlinedButton.styleFrom(
primary: Colors.white,
shape:  RoundedRectangleBorder(
borderRadius: BorderRadius.circular(5),
),
backgroundColor:Color.fromRGBO(99, 106, 246, 1.0),
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
Expanded(child: Text('Créer un nouveau compte',textAlign: TextAlign.center, style:
TextStyle(fontFamily: 'Proxima Nova', fontSize:15.24))),

],
),  style: OutlinedButton.styleFrom(
primary: Colors.white,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(5),
),
side : BorderSide(color : Color.fromRGBO(99, 106, 246, 1.0)),
backgroundColor: Colors.transparent,
))),


],
),

),

);

}}

class mdp extends StatelessWidget {
  const mdp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    children :const[

      Align(
          alignment: FractionalOffset.bottomCenter,
          child: Padding(
              padding: EdgeInsets.only(top: 200.0),
              child: Text("Mot de passe oublié",
                style : TextStyle(
                  decoration :TextDecoration.underline,
                  color : Colors.white60,

                ),
                textAlign: TextAlign.center,

              )
          ),
        ),

]);}}
