import 'package:flutter_blueprint/data/app_error.dart';
import 'package:flutter_blueprint/data/base_view_model.dart';
import 'package:flutter_blueprint/data/result_response_mixin.dart';

import '../model/news_response.dart';
import '../repository/news_repository.dart';

class NewsViewModel extends BaseViewModel
    with ResultResponseMixin<NewsResponse> {
  final NewsRepo _newsRepo;

  NewsViewModel(NewsRepo newsRepo) : _newsRepo = newsRepo;

  NewsHeader? _headerNews;

  NewsHeader? get headerNews => _headerNews;

  List<Data>? _listOfNews;

  List<Data>? get listOfNews => _listOfNews;

  bool _loadingScroll = false;

  bool get loadingScroll => _loadingScroll;

  void showScrollInfinityLoading() {
    _loadingScroll = true;
    notifyListeners();
  }

  void hideScrollInfinityLoading() {
    _loadingScroll = false;
    notifyListeners();
  }

  void updateNews(NewsResponse newsResponse) {
    _headerNews = NewsHeader(title: newsResponse.title);
    _listOfNews = [...?listOfNews, ...newsResponse.data];
  }

  Future<void> fetchingNews() async {
    showLoadingState();

    try {
      var news = await _newsRepo.obtainNews();
      updateNews(news);

      showResultState(data: news);
    } catch (e) {
      showErrorState(error: AppError(e));
    }
  }

  Future<void> fetchingNewsWithScroll() async {
    if (!_loadingScroll) {
      showScrollInfinityLoading();
      try {
        // dummy delay networking
        await Future.delayed(const Duration(seconds: 2));
        var news = await _newsRepo.obtainNews();
        updateNews(news);
      } catch (e) {
        showErrorState(error: AppError(e));
      }
      hideScrollInfinityLoading();
    }
  }
}
