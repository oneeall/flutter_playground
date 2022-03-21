import 'package:flutter/material.dart';
import 'package:flutter_blueprint/features/news/news_page.dart';
import 'package:flutter_blueprint/ui/theme/theme_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_blueprint/generated/l10n.dart';

import 'ui/theme/app_text_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    AppTextTheme.init(context);

    return ChangeNotifierProvider(
      create: (context) {
        return ThemeProvider(context);
      },
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          supportedLocales: const [
            Locale('en'),
            Locale('id'),
          ],
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          theme: context.watch<ThemeProvider>().appTheme.data,
          home: child!,
        );
      },
      child: const NewsPage(),
    );
  }
}