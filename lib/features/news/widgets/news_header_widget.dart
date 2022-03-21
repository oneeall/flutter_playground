import 'package:flutter/material.dart';
import 'package:flutter_blueprint/features/news/model/news_response.dart';
import 'package:flutter_blueprint/features/news/view_model/news_view_model.dart';
import 'package:provider/provider.dart';

class NewsHeaderWidget extends StatelessWidget {
  const NewsHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<NewsViewModel, NewsHeader?>(
      selector: (p0, p1) => p1.headerNews,
      builder: (context, value, child) => value != null
          ? Text(value.title.toUpperCase())
          : const SizedBox.shrink(),
    );
  }
}
