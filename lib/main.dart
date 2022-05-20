// ignore_for_file: deprecated_member_use

import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
// void main(){
//   runApp(MyApp());

// }
void main() => runApp(MyApp());

//MyApp will take values from StatelessWidget It will inhert from this and only add to this.
//one class can inherit from one only
//extends is the keyword to inherit from another class
//functions in a class is called methods
//BuildContext is a special object type provided by Flutter
// build method here will return a widget here
//MaterialApp (is a class where we can pass data with the feature called constructor) turns the combination of widgets into a real app that can be rendered
//Home is basically the core widget which Flutter will bring onto the screen
//We compose our user interface by mixing multiple widgets together
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 1},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 1},
        {'text': 'Lion', 'score': 5},
        {'text': 'Tiger', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite sport?',
      'answers': [
        {'text': 'Cricket', 'score': 10},
        {'text': 'Football', 'score': 1},
        {'text': 'TT', 'score': 5},
        {'text': 'Badminton', 'score': 3},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore=0;
  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }
  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // questionIndex=questionIndex+1;
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          // body: Text('This is my default text!'),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore,_resetQuiz)),
    );
  }
}
