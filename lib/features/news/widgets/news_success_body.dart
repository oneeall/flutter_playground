import 'package:flutter/material.dart';
import 'package:flutter_blueprint/features/news/model/news_response.dart';
import 'package:flutter_blueprint/features/news/view_model/news_view_model.dart';
import 'package:provider/provider.dart';

import 'scroll_infinity_loading.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    Key key = newsListViewKey,
  }) : super(key: key);

  static const newsListViewKey = ValueKey('news-list-view-key');

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  final _scrollController = ScrollController();

  Future<void> _scrollDownList() async {
    var maxScrollExtent = _scrollController.position.maxScrollExtent;
    _scrollController.animateTo(
      maxScrollExtent,
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    );
  }

  bool _onNotification(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
      context
          .read<NewsViewModel>()
          .fetchingNewsWithScroll()
          .whenComplete(_scrollDownList);
    }
    return true;
  }

  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      List<Data> bodyNews) {
    return SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return ListTile(
          title: Text(
            bodyNews[index].title,
          ),
        );
      },
      childCount: bodyNews.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    var bodyNews = context.watch<NewsViewModel>().listOfNews ?? [];
    return NotificationListener<ScrollNotification>(
      onNotification: _onNotification,
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverList(
            delegate: _buildSliverChildBuilderDelegate(bodyNews),
          ),
          const ScrollInfinityLoading()
        ],
      ),
    );
  }
}
