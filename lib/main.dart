import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "When an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red[800],
        title: Text(
          'Awesome Quotes',
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: 'IndieFlower',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}

