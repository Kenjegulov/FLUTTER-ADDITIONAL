import 'package:flutter/material.dart';

class NewPadding extends StatelessWidget {
  const NewPadding({
    super.key,
    this.word,
    this.icon,
  });
  final String? word;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100, right: 100, bottom: 6),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        onChanged: (String value) {},
        decoration: InputDecoration(
          icon: icon,
          border: const OutlineInputBorder(),
          labelText: word,
          labelStyle: const TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
