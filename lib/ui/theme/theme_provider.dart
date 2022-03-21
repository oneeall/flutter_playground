import 'package:flutter/material.dart';
import 'package:flutter_blueprint/ui/theme/app_theme.dart';

class ThemeProvider extends ChangeNotifier {

  ThemeProvider(this.context) {
    // init App Text Theme

  }


  BuildContext context;

  AppTheme _appTheme = AppTheme.light();

  AppTheme get appTheme => _appTheme;

  void changeTheme() {

    if (_appTheme.mode == ThemeMode.light) {
      _appTheme = AppTheme.dark();
    } else {
      _appTheme = AppTheme.light();
    }
    notifyListeners();
  }
}