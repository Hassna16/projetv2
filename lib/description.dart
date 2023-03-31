import 'package:flutter/material.dart';
import 'package:projetv2/Avis.dart';


class Description extends StatefulWidget {
  const Description({super.key, required this.title});


  final String title;

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  final ScrollController _controller = ScrollController();
   bool _favoris = false;
   bool _star = false;

  void fav (){
    setState(() {

      if (_favoris){
        _favoris=false;

      }
      else {
        _favoris= true;
      }
    });
  }
  void etoile(){
    setState(() {

      if (_star){
        _star=false;
      }
      else {
        _star= true;
      }
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(30, 38, 44, 1.0),
        title: const Text("Détail du jeu ",
        style : TextStyle(fontFamily: "Google Sans", fontWeight: FontWeight.bold, fontSize: 18)),
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
        child: ListView(
          children :const [
           HeaderItem(),
           Detail(),
           Explication(),
            ]
        )


      ),
    );
  }


}

//Affiche du jeu

class HeaderItem extends StatelessWidget {
  const HeaderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
    children : [
      SizedBox (
        height: 297.1,
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
            color: const Color.fromRGBO(57, 72, 80, 1.0),
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
                        Text("GOD OF WAR",
                            style : TextStyle(color:Colors.white, fontFamily:"Proxima Nova", fontSize : 15.27)),
                        Text("Nom de l'éditeur",
                            style : TextStyle(color:Colors.white,fontFamily:"Proxima Nova", fontSize: 12)),

                      ]
                  ),],),),),],);

  }
}


// Bouton avis/description

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
                backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(
                    99, 106, 246, 1.0)),
                minimumSize: MaterialStateProperty.all<Size>(const Size(334,35)),
                shape : MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    )
                ),



              ),
              child: const Text ("DESCRIPTION",style :
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
                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                minimumSize: MaterialStateProperty.all<Size>(const Size(334,35)),
                shape : MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                      side: const BorderSide(color :  Color.fromRGBO(
                          99, 106, 246, 1.0)),
                    )
                ),

              ),
              child:
              const Text( "AVIS",style :
              TextStyle(fontWeight: FontWeight.bold,fontFamily : "Google Sans", fontSize: 12.92)),
            )),],),);
  }
}

// Description du jeu
class Explication extends StatelessWidget {
  const Explication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      const Padding(
        padding:  EdgeInsets.all(20),

     child :
        Text("Concernant le scénario, la toute première bande-annonce du jeu nous a permis d'en apprendre davantage sur ce point. Oui, Kratos et son fiston Atreus sont toujours chassés par les divinités nordiques, particulièrement déterminés à se venger après avoir perdu l'un de leurs. Le garçon a visiblement grandi, ce qui suggère qu'un certain temps sépare les deux épisodes. Reste que l'on retrouve des personnages familiers du premier opus comme Mimir, les nains Brokk et Sindri ou encore Freya, autrefois épouse d'Odin. Et accessoirement mère de Baldur."

        "Rappelons par ailleurs que dans la mythologie nordique, Ragnarok renvoie à une prophétie de fin du monde, comprenant un hiver de trois ans sans soleil, des catastrophes naturelles et une grande bataille lors de laquelle dieux, valkyries et monstres doivent s'affronter. De fait et comme l'indique le nom du titre, les aventures nordiques de Kratos s'arrêteront avec cet épisode."

          "En effet, Cory Barlog, producteur de cet opus, a confirmé la chose lors d'une interview sur YouTube. D'après lui, deux jeux suffisent amplement pour conclure l'histoire de Kratos et Atreus, et opter pour un troisième jeu aurait trop étiré le récit et aurait coûté beaucoup trop de temps à Santa Monica Studios."

          "Nous savons également que Kratos et Atreus devront parcourir les Neuf royaumes à la recherche de réponses pour empêcher cette fin du monde. Pendant ce temps, les forces d'Asgard, menées par Freya, se préparent à l'affrontement alors que l'hiver touche à sa fin. Justement, en parlant de fin, celle-ci s'annonce dantesque. Sur Twitter, Cory Barlog a fait savoir que les 30 dernières minutes du jeu sont particulièrement épiques…"
       ,
      textAlign: TextAlign.justify,
      style: TextStyle(color: Colors.white, fontFamily : "Proxima Nova", fontSize: 15.26),

        )
      )
    ;

  }
}



