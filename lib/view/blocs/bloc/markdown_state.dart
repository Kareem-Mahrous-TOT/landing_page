part of 'markdown_bloc.dart';

@freezed
class MarkdownState with _$MarkdownState {
  const factory MarkdownState.initial() = _Initial;
  const factory MarkdownState.loading() = _Loading;
  const factory MarkdownState.fetchSuccess(String data) = _FetchSuccess;
  const factory MarkdownState.fetchFailed(String message) = _FetchFailed;
}
