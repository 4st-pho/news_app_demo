import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/config/app_color.dart';
import 'package:news_app/presentation/controller/article_controller.dart';
import 'package:news_app/presentation/pages/article/widgets/article_item.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<ArticleController>(
      init: ArticleController(),
      initState: (_) {},
      builder: (c) {
        return Scaffold(
          body: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemBuilder: (context, index) {
                final article = c.articles[index];
                return ArticleItem(article: article);
              },
              separatorBuilder: (context, index) => const Divider(
                    thickness: 2,
                    color: AppColor.grey,
                    height: 16,
                  ),
              itemCount: c.articles.length),
        );
      },
    );
  }
}
