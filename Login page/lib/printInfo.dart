import 'package:flutter/material.dart';
import 'package:flutter_lesson6/column.dart';
import 'model.dart';

// ignore: must_be_immutable
class PrintInfo extends StatelessWidget {
  PrintInfo({super.key, required this.user});
  User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Экрандын фонуна тус беруу
      backgroundColor: Colors.white,
      // Экрандын жогорку болугу
      appBar: AppBar(
        backgroundColor: const Color(0xff056c5c),
        elevation: 15,
        title: const Center(
          child: Text(
            "USER DATA",
            style: TextStyle(color: Color(0xffC72127), fontSize: 40),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${user.userFirstName.toUpperCase()} ${user.userLastName.toUpperCase()}",
              style: const TextStyle(color: Colors.greenAccent, fontSize: 30),
            ),
            SetColumn(word: "User age", value: "${user.userAge}"),
            SetColumn(word: "User email", value: user.userEmail),
            SetColumn(word: "User gender", value: user.userGender),
            SetColumn(word: "User merriage", value: user.password),
          ],
        ),
      ),
    );
  }
}
