import 'dart:convert';

import '../model/news_response.dart';

/// create repository with concrete class
/// * less boilerplatecode
/// * One common requirement during testing is to swap out the networking code with a mock or "fake" so that our tests run faster and more reliably.
///   However, abstract classes don't give us any advantage here, because in Dart all classes have an implicit interface.
///
class NewsRepo {
  var counter = 0;

  Future<NewsResponse> obtainNews() async {
    await Future.delayed(
      const Duration(seconds: 1),
          () {
        counter++;
      },
    );

    if (counter > 1) {
      var jsonString = jsonEncode(
        {
          "data": [
            {'title': 'news one'},
            {'title': 'news two'}
          ],
          "title": 'Highlight News!'
        },
      );
      return NewsResponse.fromJson(jsonString);
    }
    return NewsResponse.fromJson(
      jsonEncode(
        {
          "data": [
            {'title': 'news one'},
            {'title': 'news two'},
            {'title': 'news one'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news one'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news one'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news one'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news one'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news one'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news one'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news one'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news one'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news one'},
            {'title': 'news two'},
            {'title': 'news two'},
            {'title': 'news one'},
            {'title': 'news two'}
          ],
          "title": 'Breaking News!'
        },
      ),
    );
  }
}
