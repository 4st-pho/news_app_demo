import 'package:news_app/app/config/app_images.dart';
import 'package:news_app/domain/entities/article.dart';
import 'package:news_app/domain/entities/article_source.dart';

class DummyData {
  static const videoLinks = [
    'https://www.youtube.com/watch?v=YMx8Bbev6T4',
    'https://www.youtube.com/watch?v=9HX64DHJYWI',
    'https://www.youtube.com/watch?v=HXkh7EOqcQ4&list=RDHXkh7EOqcQ4&start_radio=1',
    'https://www.youtube.com/watch?v=02ODKglDVQs&list=RDHXkh7EOqcQ4&index=2',
    'https://www.youtube.com/watch?v=rp3HUmBLi-0&list=RDHXkh7EOqcQ4&index=3',
    'https://www.youtube.com/watch?v=v1ADEPnPt54&list=RDHXkh7EOqcQ4&index=5'
  ];
  static final aricles = [
    Article(
      title: 'title',
      thumbnail: AppImages.thumbnail,
      publishTime: DateTime.now().subtract(const Duration(hours: 2)),
      source: ArticleSource(
        path:
            'https://vnexpress.net/mua-lon-gay-ngap-sat-lo-nui-o-vung-tau-4525848.html',
        logo: AppImages.articleLogo,
      ),
    ),
    Article(
      title: 'title',
      thumbnail: AppImages.thumbnail,
      publishTime: DateTime.now().subtract(const Duration(hours: 2)),
      source: ArticleSource(
        path:
            'https://vnexpress.net/mua-lon-gay-ngap-sat-lo-nui-o-vung-tau-4525848.html',
        logo: AppImages.articleLogo,
      ),
    ),
    Article(
      title: 'title',
      thumbnail: AppImages.thumbnail,
      publishTime: DateTime.now().subtract(const Duration(hours: 2)),
      source: ArticleSource(
        path:
            'https://vnexpress.net/mua-lon-gay-ngap-sat-lo-nui-o-vung-tau-4525848.html',
        logo: AppImages.articleLogo,
      ),
    ),
    Article(
      title: 'title',
      thumbnail: AppImages.thumbnail,
      publishTime: DateTime.now().subtract(const Duration(hours: 2)),
      source: ArticleSource(
        path:
            'https://vnexpress.net/mua-lon-gay-ngap-sat-lo-nui-o-vung-tau-4525848.html',
        logo: AppImages.articleLogo,
      ),
    ),
    Article(
      title: 'title',
      thumbnail: AppImages.thumbnail,
      publishTime: DateTime.now().subtract(const Duration(hours: 2)),
      source: ArticleSource(
        path:
            'https://vnexpress.net/mua-lon-gay-ngap-sat-lo-nui-o-vung-tau-4525848.html',
        logo: AppImages.articleLogo,
      ),
    ),
    Article(
      title: 'title',
      thumbnail: AppImages.thumbnail,
      publishTime: DateTime.now().subtract(const Duration(hours: 2)),
      source: ArticleSource(
        path:
            'https://vnexpress.net/mua-lon-gay-ngap-sat-lo-nui-o-vung-tau-4525848.html',
        logo: AppImages.articleLogo,
      ),
    ),
  ];
}
