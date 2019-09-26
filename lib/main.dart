import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: CardID(),
));

class CardID extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Frame
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text(
          'Card ID',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/photo-1.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[200],
              thickness: 1.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'NGUYEN VAN PHAT',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.amberAccent[400],
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'LEVEL',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '8',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.amberAccent[400],
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                    Icons.email,
                    color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'phatnv@abcsoft.vn',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(height: 30.0),
            Container(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: () {},
                color: Colors.red[300],
                child: Text(
                  'Press Me.',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'IndieFlower',
                    fontSize: 20.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

