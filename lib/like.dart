import 'package:flutter/material.dart';
import 'package:projetv2/description.dart';



class Like extends StatefulWidget {
  const Like ({super.key, required this.title});


  final String title;

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  final ScrollController _controller = ScrollController();


  @override
  @override
  Widget build(BuildContext context) {
    // Page Accueil

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("LIKE"),
        centerTitle: false,

      ),
      backgroundColor: Colors.black87,
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




}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Mes Likes"

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

          Stack(
            children: const [
              Text("Mes likes."),
            ],



          )

    );

  }
}



class GameItem extends StatelessWidget {
  const GameItem({Key? key}) : super(key: key);

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
                                  Text("Prix : 10,00€",
                                      style : TextStyle(color:Colors.white, fontSize: 10, decoration: TextDecoration.underline)),

                                ]
                            ),],),),
                      // Texte + image FIN



                      Column(
                        children: [

                          TextButton(
                              onPressed: () {Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Description (title: 'Description')),
                              );},  style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                              backgroundColor:const Color.fromRGBO(97, 104, 237, 1.0),
                              minimumSize: const Size(100,100)
                          ),
                              child: Row(
                                children: const [

                                  Text('En savoir plus',textAlign: TextAlign.center),

                                ],
                              ))
                        ],
                      )

                    ]

                )

            ),

          ]
      ),
    );
  }
}

