import 'package:flutter/material.dart';

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
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  // note: create a function only when the line of code gets too long or the process you want the code gets too complex.
  void answerQuestion() {
    // setState() - a method that allows the developer to make changes once user interacts with a button on the page of the application.
    setState(() {
      questionIndex++;
      print(questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Center(
          child: Column(children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              // for onPressed flutter function: do not inlude parenthesis. only use the name of the function we made.
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              // this is an anonymous function. best to be used when the function has no name.
              onPressed: () {
                print('Answer 3 chosen');
              },
            ),
          ]),
        ),
      ),
    );
  }
}
