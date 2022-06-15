import 'package:bad_jokes_tut/answer.dart';
import 'package:bad_jokes_tut/buttons.dart';
import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _jokes = [
    {
      "question": "What does a baby computer call its father?",
      "answer": "Data"
    },
    {
      "question": "What's a pencil with two erasers called?",
      "answer": "Pointless"
    },
    {
      "question": "Why is the calendar always scared?",
      "answer": "Because it's days are numbered"
    },
    {"question": "What do you call a fish with no eye", "answer": "Fsh"},
  ];

  var _jokeIndex = 0;

  changeJokeIndex(String direction) {
    if (direction == "next") {
      if (_jokeIndex != _jokes.length - 1) {
        setState(() {
          _jokeIndex++;
        });
      } else {
        setState(() {
          _jokeIndex = 0;
        });
      }
    } else if (direction == "prev") {
      if (_jokeIndex != 0) {
        setState(() {
          _jokeIndex--;
        });
      } else {
        setState(() {
          _jokeIndex = _jokes.length - 1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Question(question: _jokes[_jokeIndex]["question"] as String),
              Answers(
                answers: _jokes[_jokeIndex]["answer"] as String,
              ),
              Buttons(changeJokeIndex: changeJokeIndex)
            ],
          ),
        ),
      ),
    );
  }
}
