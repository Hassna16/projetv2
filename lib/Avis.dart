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
          slivers: const [

            SliverToBoxAdapter(
              child: HeaderItem(),
            ),
            SliverToBoxAdapter(
              child: Detail(),
            ),
            SliverToBoxAdapter(
              child: Avisperso(),

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
        padding:  EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),

        child :
        ButtonBar(
          children :[

            TextButton(

              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Description(title: 'Description')),
              );

              },
              child: Text ("DESCRIPTION"),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor:Color.fromRGBO(97, 104, 237, 1.0),

              ) ,),
            TextButton(
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Avis(title: 'Avis')),
              );

              },
              child: Text ("AVIS"),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor:Color.fromRGBO(97, 104, 237, 1.0),

              ) ,)],));
  }
}

class Avisperso extends StatelessWidget {
  const Avisperso({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.black54,


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
                                SizedBox (
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

                                children : const [
                                  SizedBox.square(
                                    dimension: 20,

                                  ),


                                  Text("Nom de l'utilisateur",
                                      style : TextStyle(color:Colors.white, fontSize: 15)),
                                  Text("Décevant par rapport aux deux premiers : c'est devenu trop coloré, Thor se prend moins au sérieux, il y a trop d'humour décalé... On croit moins à l'univers. Alan Taylor a été bien meilleur sur la réalisation du deuxième épisode. "
                                      "Mais Taika Waititi arrivera à faire encore bien pire sur le 4e épisode... Bravo champion, t'as tué la licence. Sinon, va faire de vrais films pour enfant et arrête de nous les briser.d moins au sérieux, il y a trop d'humour décalé.",
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
