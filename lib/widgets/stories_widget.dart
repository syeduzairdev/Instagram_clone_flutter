// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  Color? color;
  StoriesWidget({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/garaj.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            // child: const Image(
            //   image: AssetImage("assets/BrainBlueBack.png"),
            // ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Admin",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
