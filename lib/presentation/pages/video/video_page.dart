import 'package:flutter/material.dart';
import 'package:news_app/data/dummy_data.dart';
import 'package:news_app/presentation/pages/video/widgets/video_item.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        cacheExtent: 4,
        itemCount: DummyData.videoLinks.length,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 30);
        },
        itemBuilder: (context, index) {
          final videoPath = DummyData.videoLinks[index];
          return VideoItem(videoPath: videoPath);
        },
      ),
    );
  }
}
