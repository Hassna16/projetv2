import 'package:flutter/material.dart';


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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
    /*return Scaffold(
      backgroundColor: Colors.black87,
      body:/*Stack (
        children : [
          Positioned.fill(
            child : Image.asset(
              "images/fonddecrannoir.jpg",
              fit : BoxFit.cover,
            )
          )
        ]
      ),*/
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
            Text( 'Bienvenue !',
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
                    onPressed: () {},
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
                    onPressed: () {},
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
    ));*/
    //PAGE INSCRIPTION 2
    /*return Scaffold(
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
                    width: 1500,
                    child  :TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(child: Text("Nom d'utilisateur",textAlign: TextAlign.center)),

                          ],
                        ),  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                      backgroundColor: Color.fromRGBO(60, 63, 65, 1.0),
                    ))),

                SizedBox.square(
                  dimension: 10.0,
                ),
// E-Mail
                SizedBox(
                    height: 45,
                    width: 1500,
                    child  :TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(child: Text('E-Mail',textAlign: TextAlign.center)),

                          ],
                        ),  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                      backgroundColor: Color.fromRGBO(60, 63, 65, 1.0),
                    ))),


                SizedBox.square(
                  dimension: 10.0,
                ),

                SizedBox(
                    height: 45,
                    width: 1500,
                    child  :TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(child: Text('Mot de passe',textAlign: TextAlign.center)),

                          ],
                        ),  style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                      backgroundColor: Color.fromRGBO(60, 63, 65, 1.0),
                    ))),


                SizedBox.square(
                  dimension: 10.0,
                ),

                SizedBox(
                    height: 45,
                    width: 1500,
                    child  :TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Expanded(child: Text('Vérification du mot de passe',textAlign: TextAlign.center)),

                          ],
                        ),  style: OutlinedButton.styleFrom(
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
                        onPressed: () {},
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
        ));*/

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
    /*ListView.builder(
      itemCount : 4,
          itemBuilder : (BuildContext context, int i) {
        return ListTile(
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

    ),*/

  ]
),),



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
