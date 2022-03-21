import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/news_view_model.dart';

class ScrollInfinityLoading extends StatelessWidget {
  const ScrollInfinityLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isLoading = context.select<NewsViewModel, bool>((value) => value.loadingScroll);
    return SliverVisibility(
      visible: isLoading,
      sliver: const SliverToBoxAdapter(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}