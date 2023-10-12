import 'package:classomni/screens/profile_screen/photos_girdview.dart';
import 'package:flutter/material.dart';

class ProfileTabBarWidget extends StatefulWidget {
  const ProfileTabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileTabBarWidget> createState() => _ProfileTabBarWidgetState();
}

class _ProfileTabBarWidgetState extends State<ProfileTabBarWidget> {
  late PageController _pageController;
  int activePageIndex = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildTab(Icons.grid_4x4_outlined, 0, () {
                    _pageController.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.decelerate);
                  }),
                  const SizedBox(width: 8.0),
                  _buildTab(Icons.photo_album, 1, () {
                    _pageController.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.decelerate);
                  }),
                  const SizedBox(width: 8.0),
                  _buildTab(Icons.video_call, 2, () {
                    _pageController.animateToPage(2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.decelerate);
                  })
                ])),
        Flexible(
            fit: FlexFit.tight,
            child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                // physics: const ClampingScrollPhysics(),
                onPageChanged: (int i) {
                  FocusScope.of(context).requestFocus(FocusNode());
                  setState(() {
                    activePageIndex = i;
                  });
                },
                children: const <Widget>[
                  PhotosGridview(),
                  PhotosGridview(),
                  PhotosGridview(),
                ])),
      ],
    );
  }

  _buildTab(IconData? icon, int index, VoidCallback tap) {
    return Expanded(
        child: InkWell(
            onTap: tap,
            child: Icon(
              icon,
              color: (activePageIndex == index) ? Colors.black : Colors.grey,
            )));
  }
}
