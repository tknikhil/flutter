import 'package:flutter/material.dart';
import 'package:need_to_know/model/question.dart';

class Quizz_Home extends StatefulWidget {
  @override
  _Quizz_HomeState createState() => _Quizz_HomeState();
}

class _Quizz_HomeState extends State<Quizz_Home> {
  List questionBank = [
    Question.name(
        "Who of the following presided the historic Lahore session of 1929 in which demand of Poorna Swaraj was raised on the bank of river Ravi?",
        true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Indian Quizz!"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                "images/indiaflag.png",
                //width: 350,
                height: 280,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(14.4),
                    border: Border.all(
                        color: Colors.blueGrey.shade400,
                        style: BorderStyle.solid)),
                height: 120,
                width: 380,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    questionBank[0].question,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                Ra
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
