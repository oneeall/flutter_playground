import 'package:flutter/material.dart';
import 'package:flutter_blueprint/data/result_response_state.dart';
import 'package:flutter_blueprint/features/news/model/news_response.dart';
import 'package:flutter_blueprint/features/news/view_model/news_view_model.dart';
import 'package:flutter_blueprint/ui/utils/result_response_builder.dart';
import 'package:provider/provider.dart';

import 'news_empty_state.dart';
import 'news_error_state.dart';
import 'news_loading_state.dart';
import 'news_success_body.dart';

class NewsBody extends StatelessWidget {
  const NewsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<NewsViewModel, ResultResponseState<NewsResponse?>?>(
      selector: (p0, p1) => p1.responseState,
      builder: (context, value, child) {
        return ResultResponseBuilder<NewsResponse>(
          response: value,
          whenLoading: const NewsLoadingState(),
          whenDataNull: const NewsEmptyState(),
          whenSuccess: (result) => const NewsListView(),
          whenError: (error, data) => NewsErrorState(
            errorMessage: error?.message,
          ),
        );
      },
    );
  }
}