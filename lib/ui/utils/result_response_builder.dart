import 'package:flutter/widgets.dart';
import 'package:flutter_blueprint/data/app_error.dart';
import 'package:flutter_blueprint/data/result_response_state.dart';


typedef ResultCallbackBuilder<T> = Widget Function(
    BuildContext context,
    T? data,
    AppError? error,
    bool isLoading,
    );

typedef WidgetSuccess<T> = Widget Function(T data);

typedef WidgetFailure<T> = Widget Function(AppError? error, T? data);

class ResultResponseBuilder<T> extends StatelessWidget {
  const ResultResponseBuilder(
      {Key? key,
        // required this.resultCallbackBuilder,
        required this.response,
        required this.whenLoading,
        required this.whenDataNull,
        required this.whenSuccess,
        required this.whenError})
      : super(key: key);

  // final ResultCallbackBuilder resultCallbackBuilder;
  final ResultResponseState<T?>? response;
  final Widget whenLoading;
  final Widget whenDataNull;
  final WidgetSuccess<T> whenSuccess;
  final WidgetFailure<T> whenError;

  @override
  Widget build(BuildContext context) {
    if (response == null) {
      return whenDataNull;
      // return resultCallbackBuilder(context, null, null, false);
    }

    if (response is ResultResponseLoading) {
      return whenLoading;
      // return resultCallbackBuilder(
      //   context,
      //   null,
      //   null,
      //   true,
      // );
    }

    if (response is ResultResponseFailure) {
      var _resp = response as ResultResponseFailure;
      return whenError(_resp.appError, _resp.data);
      // return resultCallbackBuilder(
      //   context,
      //   _resp.data,
      //   _resp.error,
      //   false,
      // );
    }

    var _resp = response as ResultResponseSuccess;

    return whenSuccess(_resp.data);
    // return resultCallbackBuilder(
    //   context,
    //   _resp.data,
    //   null,
    //   false,
    // );
  }
}
