import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/domain/entities/article.dart';

class ArticleItem extends StatelessWidget {
  final Article article;
  const ArticleItem({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(article.thumbnail, fit: BoxFit.cover),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(article.title, overflow: TextOverflow.ellipsis),
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ConstrainedBox(
                          constraints:
                              const BoxConstraints(maxWidth: 70, maxHeight: 30),
                          child: SvgPicture.network(
                            article.source.logo,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const Expanded(child: Text('2 gio')),
                      const Icon(Icons.cancel_presentation_sharp, size: 20),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
