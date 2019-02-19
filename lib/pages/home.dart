import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String _question = 'How many provinces in Thailand?';
  int _answer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quick Quiz'),
      ),
      body: Column(
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
                    _answer = 74;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  child: Text('75'),
                  onPressed: () {
                    _answer = 75;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  child: Text('76'),
                  onPressed: () {
                    _answer = 76;
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
        ],
      ),
    );
  }
}
