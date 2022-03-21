import 'package:flutter/material.dart';
import 'package:flutter_blueprint/generated/l10n.dart';

class NewsEmptyState extends StatelessWidget {
  const NewsEmptyState({
    Key key = newsEmptyStateKey,
  }) : super(key: key);

  static const newsEmptyStateKey = ValueKey('news-empty-state-key');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S.of(context).infoNewsEmpty,
      ),
    );
  }
}
