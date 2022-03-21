// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_blueprint/features/news/news_page.dart';
import 'package:flutter_blueprint/features/news/widgets/float_action_news.dart';
import 'package:flutter_blueprint/features/news/widgets/news_empty_state.dart';
import 'package:flutter_blueprint/features/news/widgets/news_success_body.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_blueprint/main.dart';

void main() {
  testWidgets('News List test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle(NewsPage.durationAnimatedOpacity);

    // Verify that our news state starts on news empty state.
    expect(find.byKey(NewsEmptyState.newsEmptyStateKey), findsOneWidget);

    // Tap the float action news and trigger a frame.
    await tester.tap(find.byKey(FloatActionNews.floatActionNewsKey));
    // delay dummy
    await tester.pump(const Duration(seconds: 2));

    // Verify that news list has show.
    expect(find.byKey(NewsEmptyState.newsEmptyStateKey), findsNothing);

    expect(find.byKey(NewsListView.newsListViewKey), findsOneWidget);
  });
}
