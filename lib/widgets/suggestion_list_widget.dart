import 'package:flutter/material.dart';

class SuggestionListWidget extends StatelessWidget {
  const SuggestionListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> suggestions = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r'
    ];
    return SizedBox.fromSize(
      size: Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          suggestions.add("new");
          if (index == 0) {
            return Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Text("Explore"));
          } else {
            return Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(suggestions[index - 1]));
          }
        },
        scrollDirection: Axis.horizontal,
        itemCount: suggestions.length + 2,
        shrinkWrap: true,
      ),
    );
  }
}
