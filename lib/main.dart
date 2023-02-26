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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
            width: 1500,
            child  :TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Expanded(child: Text('E-mail',textAlign: TextAlign.center)),

              ],
            ),  style: OutlinedButton.styleFrom(
            primary: Colors.white,
            shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
            backgroundColor: Color.fromRGBO(60, 63, 65, 1.0),
          ))),

            SizedBox.square(
              dimension: 10.0,
            ),
// MOT DE PASSE
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
    ));
  }
}
