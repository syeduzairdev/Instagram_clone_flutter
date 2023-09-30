import 'package:flutter/material.dart';

class SendingButtonWidget extends StatelessWidget {
  const SendingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(Icons.favorite_border_outlined),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.radio_button_unchecked_outlined),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.send),
            ],
          ),
          const Icon(Icons.bookmark_border_outlined),
        ],
      ),
    );
  }
}
