import 'package:flutter/material.dart';
import 'package:projetv2/wishlist.dart';
import 'package:projetv2/like.dart';
import 'package:projetv2/description.dart';
import 'package:projetv2/api.dart';


class Accueil extends StatefulWidget {
  const Accueil({super.key, required this.title});


  final String title;

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  final ScrollController _controller = ScrollController();
  final bool _favoris = false;
  final bool _star = false;

  @override
  Widget build(BuildContext context) {


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
      backgroundColor: const Color.fromRGBO(26, 32, 37, 1.0),
      body: Scrollbar(
        controller: _controller,
        child: ListView(
            children : const[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                child: SearchBar(),
              ),

              HeaderItem(),
              Bestseller(),
              Api(),
            ]
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
                color : const Color.fromRGBO(99, 106, 246, 1.0),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Accueil (title: 'Accueil')),
                  );
                },
                icon: const Icon(Icons.search)),
            filled: true,
            fillColor:  const  Color.fromRGBO(30, 38, 44, 1.0),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),

            hintText: 'Rechercher un jeu...',
            contentPadding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
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

// Affiche du meilleur jeu avec bouton en savoir plus

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
                image : NetworkImage("https:\/\/cdn.akamai.steamstatic.com\/steam\/apps\/730\/header.jpg?t=1668125812"
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

                  Text("Counter Strike",

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
                  end: 25,
                  top: 150,
                  child :

                  const Text("Counter-Strike: Global Offensive (CS: GO) expands upon the team-based action gameplay that it pioneered when it was launched 19 years ago. CS: GO features new maps, characters, weapons, and game modes, and delivers updated versions of the classic CS content (de_dust2, etc.).",



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