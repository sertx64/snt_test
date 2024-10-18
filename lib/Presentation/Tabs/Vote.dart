import 'package:flutter/material.dart';
import 'package:snt_test/Presentation/widget/vote_list.dart';

class Vote extends StatefulWidget {
  const Vote({super.key});

  @override
  _VoteState createState() => _VoteState();
}

class _VoteState extends State<Vote> {
  @override
  Widget build(BuildContext context) {
    return VoteList();
  }
}
