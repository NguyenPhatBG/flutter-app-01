import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'phat nguyen', text: 'Lorem Ipsum is simply dummy text.'),
    Quote(author: 'phat nguyen', text: 'Lorem Ipsum is simply dummy text.'),
    Quote(author: 'phat nguyen', text: 'Lorem Ipsum is simply dummy text.'),
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
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),
    );
  }
}

