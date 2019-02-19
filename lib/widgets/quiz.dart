import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizWidgetState();
  }
}

class QuizWidgetState extends State<QuizWidget> {
  final String _question = 'How many provinces in Thailand?';
  int _answer = 0;

  Widget _showResult() {
    if (_answer == 76) {
      return Icon(
        Icons.check_circle_outline,
        size: 50.0,
        color: Colors.green,
      );
    } else if (_answer != 0) {
      return Icon(
        Icons.remove_circle_outline,
        size: 50.0,
        color: Colors.red,
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            _question,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: OutlineButton(
                child: Text('74'),
                onPressed: () {
                  setState(() {
                    _answer = 74;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: OutlineButton(
                child: Text('75'),
                onPressed: () {
                  setState(() {
                    _answer = 75;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: OutlineButton(
                child: Text('76'),
                onPressed: () {
                  setState(() {
                    _answer = 76;
                  });
                },
              ),
            ),
          ],
        ),
        Center(
          child: Text(
            'Your answer is $_answer.',
            style: TextStyle(fontSize: 18.0, color: Colors.blue),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        _showResult(),
      ],
    );
  }
}
