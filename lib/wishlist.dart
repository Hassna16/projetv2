import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  const Wishlist ({super.key, required this.title});


  final String title;

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {


  @override
  Widget build(BuildContext context) {
    // Page Accueil

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(30, 38, 44, 1.0),
          title: const Text("Ma liste de souhaits", style: TextStyle(
            fontSize: 18,
            fontFamily: "Google Sans",
            fontWeight: FontWeight.bold,
          ),),
          centerTitle: false,

        ),
        backgroundColor: const Color.fromRGBO(30, 38, 44, 1.0),
        body:
        Column (
          children :const [
            HeaderItem(),
            SearchBar(),

          ],
        ));

  }

}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children :const[
          SizedBox(
            height: 50,
          ),
          Center(
              child :

              Text("Vous n’avez encore pas liké contenu.\n\n"
                  "Cliquez sur l'étoile pour en rajouter.",textAlign: TextAlign.center,
                  style : TextStyle(
                    color: Colors.white,
                    fontFamily: "Proxima Nova",
                    fontSize: 15.27,
                  )

              )),]);

  }
}

class HeaderItem extends StatelessWidget {
  const HeaderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Column(
        children :[
          const SizedBox(
            height: 200,
          ),

          Center (

            child : Image.asset(
              'assets/wishlistflutter.png',

            ),

          ),
        ]
    );


  }
}



