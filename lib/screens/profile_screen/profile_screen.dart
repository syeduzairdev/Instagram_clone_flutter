import 'package:classomni/screens/profile_screen/widget/profile_tabbar_widget.dart';
import 'package:classomni/widgets/profile_avatar_widget.dart';
import 'package:classomni/widgets/stories_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UserProfileScreen extends StatefulWidget {
  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  Future<void>? _launched;
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Syed Uzair',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.more_horiz, color: Colors.black)],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const ProfileAvatarWidget(),
                _userInfoWidget("199", "Posts"),
                _userInfoWidget("500M", "Followers"),
                _userInfoWidget("100k", "Following"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            _myPersonalInfo(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _customButton("Edit Profile"),
                _customButton("Share Profile"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: 95,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return StoriesWidget(
                      color: Colors.blue,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: const ProfileTabBarWidget()),
          ],
        ),
      ),
    );
  }

  _userInfoWidget(String title, String subtitle) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }

  _myPersonalInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Syed Uzair Hassan",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
          ),
          const Text(
            "Full Stack Developer",
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          _bulletTextWidget(
            "Foodie Love to eat food and make food",
          ),
          const SizedBox(
            height: 2,
          ),
          _bulletTextWidget(
            "4+ years of experience in Flutter",
          ),
          const SizedBox(
            height: 2,
          ),
          //emojis
          _bulletTextWidget(
            "👇👇👇👇👇👇👇👇👇",
          ),
          const SizedBox(
            height: 2,
          ),
          _bulletTextWidget(
            "Karachi, Pakistan",
          ),
          //url
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => setState(() {
              _launched =
                  _launchInBrowser(Uri.parse("https://www.uzairhassan.com/"));
            }),
            child: const Text(
              "https://www.uzairhassan.com",
              style: TextStyle(fontSize: 13, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  _bulletTextWidget(String text) {
    return Row(
      children: [
        const Icon(
          Icons.circle,
          size: 10,
          color: Color.fromARGB(255, 91, 25, 25),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 13, color: Colors.grey),
        ),
      ],
    );
  }

  _customButton(String text) {
    return Container(
      height: 30,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      child: Center(child: Text(text)),
    );
  }
}
