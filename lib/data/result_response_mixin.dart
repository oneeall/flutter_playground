
import 'app_error.dart';
import 'base_view_model.dart';
import 'result_response_state.dart';

mixin ResultResponseMixin<T> on BaseViewModel {
  ResultResponseState<T>? _responseState;

  ResultResponseState<T>? get responseState => _responseState;

  void showLoadingState() {
    _responseState = const ResultResponseState.loading();
    notifyListeners();
  }

  void showResultState({required T data}) {
    _responseState = ResultResponseState.success(data: data);
    notifyListeners();
  }

  void showErrorState({required AppError error, T? data}) {
    _responseState = ResultResponseState.failure(data: data, appError: error);
    notifyListeners();
  }
}
