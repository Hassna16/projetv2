import 'package:flutter/material.dart';
import 'second_page.dart'; // import de la deuxième page

class FirstPage extends StatelessWidget {
  final List<String> items = ['item 1', 'item 2', 'item 3'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(item: items[index]),
                ),
              );
            },
            child: ListTile(
              title: Text(items[index]),
            ),
          );
        },
      ),
    );
  }
}
