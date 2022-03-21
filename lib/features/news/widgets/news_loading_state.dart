import 'package:flutter/material.dart';

class NewsLoadingState extends StatelessWidget {
  const NewsLoadingState({
    Key key = newsLoadingStateKey,
  }) : super(key: key);

  static const newsLoadingStateKey = ValueKey('news-loading-state-key');

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
