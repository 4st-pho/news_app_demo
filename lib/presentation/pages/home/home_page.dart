import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/config/app_string.dart';
import 'package:news_app/presentation/controller/home_controller.dart';
import 'package:news_app/presentation/pages/article/article_page.dart';
import 'package:news_app/presentation/pages/video/video_page.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const VideoPage(),
      const ArticlePage(),
    ];
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.pageIndex.value,
          children: pages,
        ),
      ),
      bottomNavigationBar: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.landscape) {
            return const SizedBox.shrink();
          }
          return Obx(
            () => BottomNavigationBar(
              onTap: controller.changePage,
              currentIndex: controller.pageIndex.value,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: AppString.home),
                BottomNavigationBarItem(
                    icon: Icon(Icons.article), label: AppString.article),
              ],
            ),
          );
        },
      ),
    );
  }
}
