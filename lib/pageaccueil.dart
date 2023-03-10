import 'package:flutter/material.dart';

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
        backgroundColor: Colors.black,
        title: const Text("Accueil"),
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
    setState(() {
      _favoris = !_favoris;
    });
  }

  void etoile() {
    setState(() {
      _star = !_star;
    });
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black87,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          hintText: 'Rechercher un jeu...',
          hintStyle : TextStyle(color: Colors.white )),

      autofocus: false,
      cursorColor: Colors.white,
      style: TextStyle(
        color: Colors.white,
      ),
    );
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

                  const Text("DESCRIPTION",



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
                        onPressed: () {},  style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                        backgroundColor:const Color.fromRGBO(97, 104, 237, 1.0)
                    ),
                        child: Row(
                          children: const [
                            Expanded(child: Text('En savoir plus',textAlign: TextAlign.center)),

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
          style : TextStyle(fontSize: 20, decoration: TextDecoration.underline, )),);

  }
}

class GameItem extends StatelessWidget {
  const GameItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Row(
                  children : [

                    Column(
                      children :[
                        SizedBox (
                          height: 50,
                          width: 50,

                          child :
                          Container(

                            decoration : const BoxDecoration(
                                image : DecorationImage(
                                  image : NetworkImage("https://i0.wp.com/www.conseilbourse.fr/wp-content/uploads/2021/11/best-of-jeux-video-2014-top_041A02BC01617483.jpg?resize=1024%2C683&ssl=1"
                                  ),
                                  fit : BoxFit.cover,
                                )
                            ),


                          ),),],),

                    Column(
                        children : const [

                          Text("Nom du jeu",
                              style : TextStyle(fontSize: 15)),
                          Text("Nom de l'éditeur",
                              style : TextStyle(fontSize: 10)),
                          Text("Prix : 10,00€",
                              style : TextStyle(fontSize: 10, decoration: TextDecoration.underline)),


                        ]
                    ),
                    Column(
                      children: [
                        TextButton(
                            onPressed: () {},  style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                            backgroundColor:const Color.fromRGBO(97, 104, 237, 1.0)
                        ),
                            child: Row(
                              children: const [
                                Expanded(child: Text('En savoir plus',textAlign: TextAlign.center)),

                              ],
                            ))

                      ],
                    ),




                  ]

              )

          ),

        ]
    );
  }
}

