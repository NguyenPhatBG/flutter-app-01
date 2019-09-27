import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Tab 2 Layout'),
      ),
    );
  }
}

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red[800],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.directions_car),
                    SizedBox(width: 20.0),
                    Text('Car'),
                  ],
                ),
              ),
              Tab(icon: Icon(Icons.directions_transit), text: 'Transit')
            ],
          ),
          title: Text(
            'Awesome Quotes',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'IndieFlower',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Column(
                children: quotes.map((quote) => QuoteCard(
                    quote: quote,
                    delete: () {
                        setState(() {
                          quotes.remove(quote);
                        });
                    }
                )).toList(),
              ),
            ),
            SecondScreen(),
          ],
        ),
      ),
    );
  }
}