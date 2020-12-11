import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          /*alignment: Alignment.center*/
          alignment: Alignment.topCenter,
          children: <Widget>[
            //Text("Hello")
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(20.5),
          boxShadow: [BoxShadow(blurRadius: 10.0)]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Nikhil TK",
            style: TextStyle(
                color: Colors.brown, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "Software Engineer",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person_add_alt_1,
                color: Colors.deepPurple,
              ),
              Text(
                "  T : TKN01",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                    fontSize: 18),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.all(Radius.circular(150.0)),
          border: Border.all(color: Colors.black, width: 1.2),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/300/300"),
              fit: BoxFit.cover)),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  _tapResult() {
    debugPrint("Tap me Text");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScaffoldExample"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.agriculture),
              onPressed: () => debugPrint("Button Pressed"))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_rounded), label: "First"),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm_outlined), label: "Alarm"),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new_rounded), label: "Hug"),
        ],
        onTap: (int index) => debugPrint("Tapped Item :$index"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.adb),
        onPressed: () => debugPrint("floatingActionButton"),
      ),
      backgroundColor: Colors.deepPurpleAccent.shade200,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /* InkWell(                      either this code will run
              child: Text(                  or CustomeButton() will run
                "Tap Me",
                style: TextStyle(fontSize: 23),
              ),
              onTap: _tapResult, //method calling
            )*/

            CustomeButton() //method
          ],
        ),
      ),

      /*Center(
        child: Text(
          "Hello Flutter",
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            fontSize: 23,
            color: Colors.deepOrange,
          ),
        ),
      ),*/
    );
  }
}

class CustomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text("Hello Flutter CustomeButton"),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.teal.shade300,
            borderRadius: BorderRadius.circular(8.0)),
        child: Text(
          "Button",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepPurpleAccent,
      child: Center(
          child: Text(
        "Hello Flutter",
        textDirection: TextDirection.rtl,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            fontSize: 23,
            color: Colors.deepOrange),
      )),
    );
    /*return Center(
      child: Text("Hello Flutter",textDirection: TextDirection.rtl,),
    );*/
  }
}
