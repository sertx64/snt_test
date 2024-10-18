import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class VoteWidget extends StatefulWidget {
  VoteWidget(this.labelVote, this.optionsVote, {super.key});

  List<String> optionsVote;
  String labelVote;

  @override
  _VoteWidgetState createState() => _VoteWidgetState();
}

class _VoteWidgetState extends State<VoteWidget> {
  var selectedOption;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.blueGrey[400],
        ),
        padding: const EdgeInsets.all(8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          FormBuilderRadioGroup(
            name: 'vote',
            decoration: InputDecoration(
              labelText: widget.labelVote,
              labelStyle: const TextStyle(fontSize: 22),
            ),
            orientation: OptionsOrientation.vertical,
            onChanged: (value) => setState(() => selectedOption = value),
            options: widget.optionsVote.map((String option) {
              return FormBuilderFieldOption(
                value: option,
                child: Text(option),
              );
            }).toList(),
          ),
          ElevatedButton(
            onPressed: () {
              print(selectedOption);
            },
            child: const Text('Голосовать'),
          ),
        ]));
  }
}
