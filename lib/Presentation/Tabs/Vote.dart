import 'package:flutter/material.dart';
import 'package:snt_test/Presentation/widget/vote_widget.dart';

class Vote extends StatefulWidget {
  const Vote({super.key});

  @override
  _VoteState createState() => _VoteState();
}

class _VoteState extends State<Vote> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          VoteWidget('какойто вопрос', ['ответ1', 'второй', 'ещё какойто']),
          const SizedBox(height: 8),
          VoteWidget('какойто вопрос ущё', ['ответ1', 'второй', 'ещё какойто']),
          const SizedBox(height: 8),
          VoteWidget(
              'какойто вопрос и вот этот', ['ответ1', 'второй', 'ещё какойто'])
        ],
      ),
    );
  }
}
