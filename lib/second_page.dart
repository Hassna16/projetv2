import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String item;

  SecondPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Center(
        child: Text(item),
      ),
    );
  }
}
