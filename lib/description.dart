import 'package:flutter/material.dart';
import 'like.dart';
import 'wishlist.dart';
import 'package:projetv2/Avis.dart';



class Description extends StatefulWidget {
  const Description({super.key, required this.title});


  final String title;

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  final ScrollController _controller = ScrollController();
  final bool _favoris = false;
  final bool _star = false;

  @override
  Widget build(BuildContext context) {
    // Page de descritpion

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
              child: Explication(),

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
                backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                minimumSize: MaterialStateProperty.all<Size>(const Size(334,35)),
                shape : MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    )
                ),



              ),
              child: const Text ("DESCRIPTION",style :
              TextStyle(fontFamily : "GoogleSansBold", fontSize: 12.92)),
            ),),
            Expanded(child:
            ElevatedButton(
              onPressed: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Avis(title: 'Avis')),
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
              child:
              const Text( "AVIS",style :
              TextStyle(fontFamily : "GoogleSansBold", fontSize: 12.92)),
            )),],),);
  }
}


class Explication extends StatelessWidget {
  const Explication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding:  EdgeInsets.all(20),

     child :
        Text("Concernant le scénario, la toute première bande-annonce du jeu nous a permis d'en apprendre davantage sur ce point. Oui, Kratos et son fiston Atreus sont toujours chassés par les divinités nordiques, particulièrement déterminés à se venger après avoir perdu l'un de leurs. Le garçon a visiblement grandi, ce qui suggère qu'un certain temps sépare les deux épisodes. Reste que l'on retrouve des personnages familiers du premier opus comme Mimir, les nains Brokk et Sindri ou encore Freya, autrefois épouse d'Odin. Et accessoirement mère de Baldur."

        "Rappelons par ailleurs que dans la mythologie nordique, Ragnarok renvoie à une prophétie de fin du monde, comprenant un hiver de trois ans sans soleil, des catastrophes naturelles et une grande bataille lors de laquelle dieux, valkyries et monstres doivent s'affronter. De fait et comme l'indique le nom du titre, les aventures nordiques de Kratos s'arrêteront avec cet épisode."

          "En effet, Cory Barlog, producteur de cet opus, a confirmé la chose lors d'une interview sur YouTube. D'après lui, deux jeux suffisent amplement pour conclure l'histoire de Kratos et Atreus, et opter pour un troisième jeu aurait trop étiré le récit et aurait coûté beaucoup trop de temps à Santa Monica Studios."

          "Nous savons également que Kratos et Atreus devront parcourir les Neuf royaumes à la recherche de réponses pour empêcher cette fin du monde. Pendant ce temps, les forces d'Asgard, menées par Freya, se préparent à l'affrontement alors que l'hiver touche à sa fin. Justement, en parlant de fin, celle-ci s'annonce dantesque. Sur Twitter, Cory Barlog a fait savoir que les 30 dernières minutes du jeu sont particulièrement épiques…"
       ,
      textAlign: TextAlign.justify,
      style: TextStyle(color: Colors.white, fontFamily : "ProximaNova-Regular", fontSize: 15.26),

        )
      )
    ;

  }
}



