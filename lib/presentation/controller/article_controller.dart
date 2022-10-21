import 'package:get/get.dart';
import 'package:news_app/data/dummy_data.dart';

class ArticleController extends GetxController {
  ArticleController() {
    articles.value = DummyData.aricles;
  }
  final articles = [].obs;
}
