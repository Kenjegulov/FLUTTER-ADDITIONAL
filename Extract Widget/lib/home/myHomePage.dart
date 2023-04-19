import 'package:flutter/material.dart';
import 'package:extract/components/containerWidget.dart';
import 'package:audioplayers/audioplayers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final player = AudioPlayer();

class _MyHomePageState extends State<MyHomePage> {
  void play(AudioPlayer audioPlayer) async {
    await player.stop();
    player.play(AssetSource("${audioPlayer}.mp3"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/1200px-Flag_of_Kyrgyzstan.svg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContainerWidget(
                      word1: "lesson 1",
                      word2: "FINISHED",
                      icon: Icons.play_lesson,
                      color: Colors.green,
                      image: "images/lesson1.png"
                      // "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/1200px-Flag_of_Kyrgyzstan.svg.png",
                      ),
                  SizedBox(width: 10),
                  ContainerWidget(
                      word1: "lesson 2",
                      word2: "FINISHED",
                      icon: Icons.play_lesson,
                      color: Colors.green,
                      image: "images/lesson2.png"
                      // "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/1200px-Flag_of_Kyrgyzstan.svg.png",
                      ),
                  SizedBox(width: 10),
                  ContainerWidget(
                      word1: "lesson 3",
                      word2: "FINISHED",
                      icon: Icons.play_lesson,
                      color: Colors.green,
                      image: "images/lesson3.png"
                      // "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/1200px-Flag_of_Kyrgyzstan.svg.png",
                      ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ContainerWidget(
                      word1: "lesson 4",
                      word2: "FINISHED",
                      icon: Icons.play_lesson,
                      color: Colors.green,
                      image: "images/lesson4.png"
                      // "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/1200px-Flag_of_Kyrgyzstan.svg.png",
                      ),
                  SizedBox(width: 10),
                  ContainerWidget(
                      word1: "lesson 5",
                      word2: "FINISHED",
                      icon: Icons.play_lesson,
                      color: Colors.green,
                      image: "images/lesson5.png"
                      // "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Flag_of_Kyrgyzstan.svg/1200px-Flag_of_Kyrgyzstan.svg.png",
                      ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
