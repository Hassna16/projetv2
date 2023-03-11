import 'package:flutter/material.dart';

void main() {
  runApp(Appli());
}

class Appli extends StatelessWidget {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  final Set<String> favorites = {};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WIISHLIST',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Favoris'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(items[index]),
              trailing: IconButton(
                icon: Icon(
                  favorites.contains(items[index])
                      ? Icons.star
                      : Icons.star_border,
                ),
                onPressed: () {
                  setState(() {
                    if (favorites.contains(items[index])) {
                      favorites.remove(items[index]);
                    } else {
                      favorites.add(items[index]);
                    }
                  });
                },
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoritesScreen(favorites: favorites.toList()),
              ),
            );
          },
          child: Icon(Icons.star),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}

class FavoritesScreen extends StatelessWidget {
  final List<String> favorites;

  FavoritesScreen({Key? key, required this.favorites}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoris'),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(favorites[index]),
          );
        },
      ),
    );
  }
}
