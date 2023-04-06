import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.word1,
    required this.word2,
    this.icon,
    required this.image,
    this.color,
  });
  final String word1, word2;
  final IconData? icon;
  final String image;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 400,
      color: Colors.brown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(word1, style: TextStyle(color: color, fontSize: 35)),
              Text(word2, style: TextStyle(color: color, fontSize: 20)),
              Icon(icon),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "${image}",
                width: 100,
                height: 200,
              )
              // Image.network(
              //   "${image}",
              //   width: 50,
              //   height: 50,
              // )
            ],
          )
        ],
      ),
    );
  }
}
