import 'package:flutter/material.dart';
import 'package:projetv2/wishlist.dart';
import 'package:projetv2/like.dart';
import 'package:projetv2/description.dart';
import 'pageaccueil.dart';


class Avis extends StatefulWidget {
  const Avis({super.key, required this.title});


  final String title;

  @override
  State<Avis> createState() => _AvisState();
}

class _AvisState extends State<Avis> {
  final ScrollController _controller = ScrollController();
  bool _favoris = false;
  bool _star = false;

  @override
  Widget build(BuildContext context) {
    // Page Avis


    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(30, 38, 44, 1.0),
        title: const Text("Détail du jeu ", style : TextStyle(fontFamily: "Google Sans",
            fontWeight: FontWeight.bold,
            fontSize: 18),),
        centerTitle: false,
        actions: [
          IconButton(
            icon: _favoris
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border_outlined),
            onPressed: fav,
          ),
          IconButton(
            onPressed: etoile,
            icon: _star
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border_outlined),
          )
        ],
      ),
      backgroundColor: const Color.fromRGBO(30, 38, 44, 1.0),
      body: Scrollbar(
        controller: _controller,
        child: CustomScrollView(
          controller: _controller,
          slivers:  [

            const SliverToBoxAdapter(
              child: HeaderItem(),
            ),
            const SliverToBoxAdapter(
              child: Detail(),
            ),
            const SliverToBoxAdapter(
              child: Avisperso(),

            ),
            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(100, (index) => const Avisperso()),
              ),
            ),


          ],
        ),
      ),
    );
  }

  void fav() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Like (title: 'Like')),
    );
  }

  void etoile() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Wishlist (title: 'Wishlist')),
    );

  }
}




class HeaderItem extends StatelessWidget {
  const HeaderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children : [
        SizedBox (
          height:  297.1,
          width: MediaQuery.of(context).size.width,

          child :
          Container(

            decoration : const BoxDecoration(
                image : DecorationImage(
                  image : NetworkImage("https://m.media-amazon.com/images/I/71h-xYqRKmL._AC_SX342_SY445_.jpg"
                  ),
                  fit : BoxFit.cover,
                )
            ),


            child : const SizedBox (),
          ),),
        Card(

          margin :  const EdgeInsets.only(top : 190, left: 15, right: 15),
          color: const Color.fromRGBO(50, 63, 70, 1.0),
          child : Container(
            decoration: BoxDecoration(
                border: Border.all(color : Colors.transparent, width: 8)
            ),
            child:
            Row(
              children :[
                Column(
                  children :[
                    SizedBox (
                      height: 100,
                      width: 80,

                      child :
                      Container(

                        decoration : const BoxDecoration(
                            image : DecorationImage(
                              image : NetworkImage("https://m.media-amazon.com/images/I/71h-xYqRKmL._AC_SX342_SY445_.jpg"),
                              fit : BoxFit.cover,
                            )
                        ),


                      ),),],),

                Column(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                  ],

                ),

                Column(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children : const [
                      Text("Nom du jeu",
                          style : TextStyle(color:Colors.white, fontFamily : "Proxima Nova", fontSize: 15.26)),
                      Text("Nom de l'éditeur",
                          style : TextStyle(color:Colors.white, fontFamily : "Proxima Nova", fontSize: 12)),

                    ]
                ),],),),),],);

  }
}

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding:  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),

      child :

      Row(
        children :[

          Expanded(child:
          ElevatedButton(

            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Description(title: 'Description')),
            );

            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
              minimumSize: MaterialStateProperty.all<Size>(const Size(334,35)),
              shape : MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                    side: const BorderSide( color :  Color.fromRGBO(
                        99, 106, 246, 1.0)),
                  )
              ),

            ),
            child: const Text ("DESCRIPTION", style :
            TextStyle(fontWeight: FontWeight.bold,fontFamily : "Google Sans", fontSize: 12.92)),
          ),),
          Expanded(child:
          ElevatedButton(
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Avis(title: 'Avis')),
            );

            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>((const Color.fromRGBO(
                  99, 106, 246, 1.0))),
              minimumSize: MaterialStateProperty.all<Size>(const Size(334,35)),
              shape : MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  )
              ),



            ),
            child:
            const Text( "AVIS", style :
            TextStyle(fontWeight: FontWeight.bold,fontFamily : "Google Sans", fontSize: 12.92)),),
          )],),);
  }
}

class Avisperso extends StatelessWidget {
  const Avisperso({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Card(
      color: const Color.fromRGBO(50, 63, 70, 1.0),

      child:
      Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Row(


                    children : [
                      Expanded(
                        child :
                        // Texte + image
                        Row(
                          children :[
                            Column(
                              children :[
                                const SizedBox (
                                  height: 80,
                                  width: 80,

                                  ),

                            Column(
                              children: const [
                                SizedBox(
                                  width: 10,
                                ),
                              ],

                            ),

                           Column(

                                children :  [
                                  Row(
                                    children: <Widget>[
                                      Text("Nom de l'utilisateur",
                                          style : TextStyle(color:Colors.white, fontSize: 15,)),
                                      SizedBox(
                                        width: 200,
                                      ),


                                      Icon(Icons.star, color: Colors.yellow),
                                      Icon(Icons.star, color: Colors.yellow),
                                      Icon(Icons.star, color: Colors.yellow),
                                      Icon(Icons.star, color: Colors.yellow),
                                      Icon(Icons.star_border, color: Colors.yellow),
                                    ],
                                  ),

                                  Text("votre avis.",
                                      style : TextStyle(color:Colors.white, fontFamily: "Proxima Nova",fontSize: 15.26)),

                                ]
                            ),],),],)),
                      // Texte + image FIN


                    ]

                )

            ),

          ]
      ),
    );
  }
}
