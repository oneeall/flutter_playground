# flutter_blueprint

flutter architecture blueprint using mvvm architecture and project structure approaches to developing Flutter Apps.

### Architecture

|Working status|Category|Description|Codes|
|:---:|---|---|---|
| ✅ | Base | Using [Provider](https://pub.dev/packages/provider) [ChangeNotifier](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple#changenotifier) + MVVM
| ✅ | Networking | Using [dio](https://pub.dev/packages/dio) |
| ✅ | Data | Using [Freezed](https://pub.dev/packages/freezed) |
| ✅ | Constants | Define constants and route names |
| ✅ | Localization | Switching between two languages with flutter localization 
| ✅ | Error handling | Using Result pattern - A value that represents either a success or a failure, including an associated value in each case. | [result_response_state.dart](lib/data/result_response_state.dart)

#### UI
|Working status|Category|Description|Codes|
|:---:|---|---|---|
| ✅ | Theme | Statically Switch between light and dark themes | [app_theme.dart](lib/ui/theme/app_theme.dart)
| ✅ | Font | Using [Google font](https://pub.dev/packages/google_fonts) | [app_text_theme.dart](lib/ui/theme/app_text_theme.dart) |

#### Testing
|Working status|Category|Description|Codes|
|:---:|---|---|---|
| ✅ | API(Repositories) | Using [mocktail](https://github.com/felangel/mocktail)
| ✅️ | UI | Using [mocktail](https://github.com/felangel/mocktail) | [widget_test.dart](test/widget_test.dart) |