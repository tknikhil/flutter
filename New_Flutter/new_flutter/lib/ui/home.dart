import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.orange,
      child: Center(
          child: Text(
        "Hello Material Flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24.4,
          fontStyle: FontStyle.italic,
          color: Colors.brown,
        ),
      )),
    );

    /*return Center(
      child: Text("Hello Flutter",textDirection: TextDirection.ltr),
    );*/
  }
}

class BizzCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizzCard"),
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            //Text("Hello")
            _getCard()
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [BoxShadow(blurRadius: 12)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Nikhil",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34.5,
                color: Colors.yellow),
          ),
          Text(
            "Software Engineer",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34.5,
                color: Colors.yellow),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: Colors.red,
              ),
              Text(
                " Merry Christmas",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.5,
                    color: Colors.red),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List quotes = [
    "Be yourself, everyone else is already taken.",
    "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
    "Be who you are and say what you feel, because those who mind don't matter, and those who matter don't mind.",
    "You know you're in love when you can't fall asleep because reality is finally better than your dreams.",
    "Be the change that you wish to see in the world.",
    "If you tell the truth, you don't have to remember anything.",
    "Live as if you were to die tomorrow. Learn as if you were to live forever.",
    "Without music, life would be a mistake."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 450,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        color: Colors.brown[800],
                        borderRadius: BorderRadius.circular(23.0),
                        boxShadow: [BoxShadow(blurRadius: 11.0)]),
                    child: Center(
                        child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                          fontSize: 19.5,
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                    ))),
              ),
            ),
            Divider(
              thickness: 0.9,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                  onPressed: _showQuotes, //_showQuotes() will not work
                  color: Colors.blue,
                  icon: Icon(Icons.add_to_home_screen_sharp),
                  label: Text(
                    "Inspire me..",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  )),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  _showQuotes() {
    /*The main game is setState because its a StatefulWidget*/
    setState(() {
      _index += 1;
    });
  }
}
