import 'package:flutter/material.dart';
import 'quizBank.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> iconList = [];
  QuestionBank questionList = QuestionBank();

      void checkAnswer(bool userPressedAnswer){
            bool currectAnswer = questionList.getAnswer();
             setState(() {
                if (currectAnswer == userPressedAnswer) {
                   iconList.add(Icon(Icons.done, color: Colors.green,));
                } else
                  iconList.add(Icon(Icons.cancel));

               
                  questionList.getCounter();
               
                });
      }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(questionList.getQuestion(),
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
               shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(50.0),
              ),
              color: Colors.greenAccent,
              onPressed: () {
                 checkAnswer(true);
              },
              child: Text("True", style: TextStyle(fontSize: 20.0),),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
               shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(50.0),
              ),
              color: Colors.redAccent,
              onPressed: () {
                   checkAnswer(false);
              },
              child: Text("False",  style: TextStyle(fontSize: 20.0),),
            ),
          ),
        ),
        Row(children: iconList),
      ],
    );
  }
}
