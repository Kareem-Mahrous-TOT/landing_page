part of 'markdown_bloc.dart';

@freezed
class MarkdownEvent with _$MarkdownEvent {
  const factory MarkdownEvent.started() = _Started;
  const factory MarkdownEvent.fetch(String path) = _FetchEvent;
}