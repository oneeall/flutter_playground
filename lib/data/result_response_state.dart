import 'package:flutter_blueprint/data/app_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part'result_response_state.freezed.dart';

@freezed
class ResultResponseState<T> with _$ResultResponseState {
  const factory ResultResponseState.success({required T data}) = ResultResponseSuccess;
  const factory ResultResponseState.loading() = ResultResponseLoading;
  const factory ResultResponseState.failure({T? data, required AppError appError }) = ResultResponseFailure;
}
