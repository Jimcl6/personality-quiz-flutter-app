import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

// extends - used to inherit the properties from another class
// functions inside a class are considered as methods.

// use StatefulWidget only when we wish to make changes within the current page of the application.
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  // note: create a function only when the line of code gets too long or the process you want the code gets too complex.
  void _answerQuestion() {
    // setState() - a method that allows the developer to make changes once user interacts with a button on the page of the application.
    // setState calls the build method of the widget where we call setState() where in the build method re-runs the build method.
    setState(() {
      _questionIndex++;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'White', 'Teal'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Rabbit', 'Lion', 'Tiger']
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Colt Steele', 'Maximillian', 'Brad Schiff', 'Angela Yu']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          title: Text(
            'My First App',
          ),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex]['questionIndex'],
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
          // Answer(_answerQuestion),
          // Answer(_answerQuestion),
          // Answer(_answerQuestion),
        ]),
      ),
    );
  }
}
