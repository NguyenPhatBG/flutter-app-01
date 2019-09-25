import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            print('you just click me.');
          },
          child: Text(
            'click me.',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'IndieFlower',
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),
          ),
          color: Colors.lightBlue,
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
