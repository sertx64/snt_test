import 'package:flutter/material.dart';
import 'package:snt_test/Presentation/widget/vote_widget.dart';


class VoteList extends StatefulWidget {
  VoteList({super.key});

  @override
  _VoteListState createState() => _VoteListState();
}

class _VoteListState extends State<VoteList> {
  List voteList = [{'lable':'Вопрос1', 'options':['var1', 'var3']}, {'lable':'Вопрос1', 'options':['var1', 'var2', 'var3']}, {'lable':'Вопрос1', 'options':['var1', 'var2', 'var3']}];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) =>
          ListTile(
              title: VoteWidget(voteList[index]['lable'], voteList[index]['options'])

          ),
      separatorBuilder: (context, index) => const SizedBox(height: 8,),
      itemCount: voteList.length,
    );
  }
}