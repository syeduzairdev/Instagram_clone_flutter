// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:classomni/widgets/profile_avatar_widget.dart';
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
        children: const [
          ProfileAvatarWidget(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Admin",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
