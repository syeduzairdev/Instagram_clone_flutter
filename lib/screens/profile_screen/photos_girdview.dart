import 'package:flutter/material.dart';

class PhotosGridview extends StatelessWidget {
  const PhotosGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 50,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/garaj.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          );
        });
  }
}
