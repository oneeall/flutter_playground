import 'package:flutter/material.dart';
import 'package:flutter_blueprint/features/news/view_model/news_view_model.dart';
import 'package:provider/provider.dart';

class FloatActionNews extends StatelessWidget {
  const FloatActionNews({
    Key? key = floatActionNewsKey,
  }) : super(key: key);

  static const floatActionNewsKey = ValueKey('float-action-news-key');

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.read<NewsViewModel>().fetchingNews();
      },
      child: const Icon(Icons.refresh),
    );
  }
}
