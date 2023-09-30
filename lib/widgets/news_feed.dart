import 'package:classomni/widgets/sending_button_widget.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //1st chikdern
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/uzair.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Admin",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              const Icon(Icons.more_horiz_outlined)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          //2nd children
          Container(
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/garaj.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //`5th children
          const SendingButtonWidget(),
          const SizedBox(
            height: 10,
          ),
          //6th children
          const Text("2,879,999 likes"),
          const SizedBox(
            height: 10,
          ),
          //7th children
          Row(
            children: const [
              Text("Admin", style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                width: 10,
              ),
              Text("HEllo that nice place to vidist")
            ],
          )
        ],
      ),
    );
  }
}
