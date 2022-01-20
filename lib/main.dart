import 'package:flutter/material.dart';
import 'liste.dart';

Base listeChoix = Base();

void main() => runApp(Challenge());

class Challenge extends StatelessWidget {
  const Challenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Challenge2(),
      ),
    );
  }
}

class Challenge2 extends StatefulWidget {
  Challenge2({Key? key}) : super(key: key);

  @override
  _Challenge2State createState() => _Challenge2State();
}

class _Challenge2State extends State<Challenge2> {
  void choixValue1() {
    setState(() {
      listeChoix.controlChoix1(listeChoix.numberChoix);
    });
  }

  void choixValue2() {
    setState(() {
      listeChoix.controlChoix2(listeChoix.numberChoix);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 7,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  listeChoix.getQuestionsChoix(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: FlatButton(
                color: Colors.blue,
                onPressed: () {
                  choixValue1();
                },
                child: Text(
                  listeChoix.getChoix1(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Visibility(
            visible: listeChoix.getChoix2() != "",
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    choixValue2();
                  },
                  child: Text(
                    listeChoix.getChoix2(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
