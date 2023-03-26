import 'package:flutter/material.dart';
import 'package:projetv2/wishlist.dart';
import 'package:projetv2/like.dart';
import 'package:projetv2/description.dart';


class Accueil extends StatefulWidget {
  const Accueil({super.key, required this.title});


  final String title;

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  final ScrollController _controller = ScrollController();
  bool _favoris = false;
  bool _star = false;

  @override
  Widget build(BuildContext context) {
    // Page Accueil

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(30, 38, 44, 1.0),
        title: const Text("Accueil",
            style: TextStyle(color: Colors.white, fontFamily: 'Google Sans', fontWeight: FontWeight.bold,
              fontSize:18, )),
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
          slivers: [

            const SliverToBoxAdapter(
              child: SearchBar(),
            ),
            const SliverToBoxAdapter(
              child: HeaderItem(),
            ),
            const SliverToBoxAdapter(
              child: Bestseller(),
            ),

            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(100, (index) => const GameItem()),
              ),
            )
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

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    SizedBox(
      height:35.23,
    width: 352.29,
    child :
      TextField(


      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Accueil (title: 'Accueil')),
            );
            },
            icon: const Icon(Icons.search)),
          filled: true,
          fillColor:  const  Color.fromRGBO(0, 3, 100, 1.0),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          hintText: 'Rechercher un jeu...',
          hintStyle : const TextStyle(color: Colors.white, fontFamily: 'Proxima Nova',
            fontSize:12.92, ),

      ),

      autofocus: false,
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),);
  }
}

class HeaderItem extends StatelessWidget {
  const HeaderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox (
        height: 250,
        width: MediaQuery.of(context).size.width,

        child :
        Container(

          decoration : const BoxDecoration(
              image : DecorationImage(
                image : NetworkImage("https://i0.wp.com/www.conseilbourse.fr/wp-content/uploads/2021/11/best-of-jeux-video-2014-top_041A02BC01617483.jpg?resize=1024%2C683&ssl=1"
                ),
                fit : BoxFit.cover,
              )
          ),


          child :
          Stack(
              children: [

                const PositionedDirectional(

                  start: 25,
                  top: 80,
                  width: 250,

                  child :

                  Text("Titan Fall 2 ""Ultimate Edition",

                    style: TextStyle(
                      fontWeight : FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Proxima Nova',
                      fontSize:18.79,
                    ),
                  ),),

                Positioned.directional(
                  textDirection: Directionality.of(context),
                  start: 25,

                  top: 150,

                  child :

                  const Text("DESCRIPTION",



                    style: TextStyle(

                      fontWeight : FontWeight.w600,
                      color: Colors.white,
                      fontFamily: 'Proxima Nova',
                      fontSize:11.74,
                    ),
                  ),),
                Positioned.directional(
                    textDirection: Directionality.of(context),
                    start: 25,
                    top: 190,
                    width: 150,

                    child  :TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Description (title: 'Description')),
                          );

                        },  style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                        backgroundColor:const Color.fromRGBO(97, 104, 237, 1.0)

                    ),
                        child: Row(
                          children: const [
                            Expanded(child:
                            SizedBox(
                              height :35.23,
                                  width: 162.05,
                                  child:Center(
                                    child: Text('En savoir plus',textAlign: TextAlign.center,
                                      style : TextStyle(
                                        fontFamily: 'Proxima Nova',
                                        fontSize: 15.27,

                                      ),
                                  )
                                )),)

                          ],
                        ))
                ),]
          ),)

    );

  }
}

class Bestseller extends StatelessWidget {
  const Bestseller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),

      child : Text(
          "Les meilleures ventes",
          style : TextStyle(color:Colors.white, fontFamily: "Proxima Nova", fontSize: 15.27, decoration: TextDecoration.underline, )),);

  }
}

class GameItem extends StatelessWidget {
  const GameItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: const Color.fromRGBO(57, 72, 80, 1.0),


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

                            child :
                            Container(

                              decoration : const BoxDecoration(
                                  image : DecorationImage(
                                    image : NetworkImage("https://m.media-amazon.com/images/I/71h-xYqRKmL._AC_SX342_SY445_.jpg"
                                    ),
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
                                style : TextStyle(color:Colors.white, fontSize: 15.27,fontFamily: 'Proxima Nova',)),
                            Text("Nom de l'éditeur",
                                style : TextStyle(color:Colors.white, fontSize: 12, fontFamily: 'Proxima Nova',)),
                            Text("Prix : 10,00€",
                                style : TextStyle(color:Colors.white, fontSize: 12,fontFamily: 'Proxima Nova', decoration: TextDecoration.underline)),

                          ]
                      ),],),),
                      // Texte + image FIN



                      Column(
                        children: [
                          SizedBox(
                            height: 100.99,
                     width: 102.15,
                      child :

                          TextButton(
                              onPressed: () {Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Description (title: 'Description')),
                              );

                              },
                              style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                              backgroundColor:const Color.fromRGBO(97, 104, 237, 1.0),
                             minimumSize: const Size(100,100)
                          ),
                              child: Row(
                                children: const [

                                 Text('En savoir plus',textAlign: TextAlign.center, style :
                                 TextStyle(
                                   fontFamily:"Proxima Nova",
                                       fontSize: 18.79,
                                 ),),

                                ],
                              ))
                          ),],
                      )

                    ]

                )

            ),

          ]
      ),
    );
  }
}

