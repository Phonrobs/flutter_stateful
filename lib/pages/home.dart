import 'package:flutter/material.dart';
import 'package:flutter_stateful/widgets/quiz.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quick Quiz'),
      ),
      body: QuizWidget(),
    );
  }
}
