import 'package:flutter/material.dart';
import 'package:flutter_lesson6/model.dart';

class SetColumn extends StatelessWidget {
  const SetColumn({super.key, required this.word, required this.value});
  final String? word;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${word?.toUpperCase()}: ",
            style: const TextStyle(color: Colors.blueGrey, fontSize: 20),
          ),
          Text(
            "$value",
            style: const TextStyle(color: Colors.blue, fontSize: 20),
          )
        ],
      ),
    );
  }
}
