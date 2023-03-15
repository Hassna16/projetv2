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
        backgroundColor: Colors.black,
        title: const Text("Détail du jeu "),
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
      backgroundColor: Colors.black87,
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
          height: 250,
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
          color: Colors.grey,
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
                          style : TextStyle(color:Colors.white, fontSize: 15)),
                      Text("Nom de l'éditeur",
                          style : TextStyle(color:Colors.white, fontSize: 10)),

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
      Expanded(child:
      Row(
        children :[


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
                    side: const BorderSide(color : Colors.deepPurple),
                  )
              ),

            ),
            child: const Text ("DESCRIPTION"),
          ),
          ElevatedButton(
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Avis(title: 'Avis')),
            );

            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
              minimumSize: MaterialStateProperty.all<Size>(const Size(334,35)),
              shape : MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  )
              ),



            ),
            child:
            const Text( "AVIS"),
          )],),),);
  }
}

class Avisperso extends StatelessWidget {
  const Avisperso({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.black45,


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
                                      style : TextStyle(color:Colors.white, fontSize: 10)),

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
