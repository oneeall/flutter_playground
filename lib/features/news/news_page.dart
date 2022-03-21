import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'repository/news_repository.dart';
import 'view_model/news_view_model.dart';
import 'widgets/float_action_news.dart';
import 'widgets/news_body.dart';
import 'widgets/news_header_widget.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  static const durationAnimatedOpacity = Duration(milliseconds: 350);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final newsRepo = NewsRepo();
  var opacity = 0.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      show();
    });
  }

  void show() {
    setState(() {
      opacity = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NewsViewModel(newsRepo),
      builder: (context, child) {
        return AnimatedOpacity(
          opacity: opacity,
          duration: NewsPage.durationAnimatedOpacity,
          child: child!,
          curve: Curves.easeIn,
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const NewsHeaderWidget(),
          actions: [
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    context.read<NewsViewModel>().fetchingNewsWithScroll();
                  },
                  icon: const Icon(Icons.refresh),
                );
              },
            )
          ],
        ),
        body: const NewsBody(),
        floatingActionButton: const FloatActionNews(),
      ),
    );
  }
}











