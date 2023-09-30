import 'package:classomni/widgets/news_feed.dart';
import 'package:classomni/widgets/stories_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.camera_alt, color: Colors.black),
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.send, color: Colors.black)],
        elevation: 0,
      ),
      //body
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //1st chikdern
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text("stories"), Text("Watch all")],
                ),
                const SizedBox(
                  height: 10,
                ),
                //2nd children
                SizedBox(
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
                // Row(
                //   children: [
                //     StoriesWidget(
                //       color: Colors.blue,
                //     ),
                //     StoriesWidget(
                //       color: Colors.red,
                //     ),
                //     StoriesWidget(
                //       color: Colors.yellow,
                //     ),
                //     StoriesWidget(
                //       color: Colors.green,
                //     ),
                //     StoriesWidget(
                //       color: Colors.black,
                //     ),
                //   ],
                // )
                const SizedBox(height: 10),
                //3rd children
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                //4th children
                const NewsFeed(),
                const SizedBox(
                  height: 10,
                ),
                const NewsFeed(),
                const SizedBox(
                  height: 10,
                ),
                const NewsFeed(),
                const SizedBox(
                  height: 10,
                ),
                const NewsFeed(),
                const SizedBox(
                  height: 10,
                ),
                const NewsFeed(),
                const SizedBox(
                  height: 10,
                ),
                const NewsFeed(),
                const SizedBox(
                  height: 10,
                ),
                const NewsFeed(),
                const SizedBox(
                  height: 10,
                ),
                const NewsFeed(),
                const SizedBox(
                  height: 10,
                ),
                const NewsFeed(),
                const SizedBox(
                  height: 10,
                ),
                const NewsFeed(),
                const SizedBox(
                  height: 10,
                ),
                const NewsFeed(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
