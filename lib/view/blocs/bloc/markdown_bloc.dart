import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tot_landing_page_widgets/data/repo/base/fetch_markdown.dart';

part 'markdown_bloc.freezed.dart';
part 'markdown_event.dart';
part 'markdown_state.dart';

class MarkdownBloc extends Bloc<MarkdownEvent, MarkdownState> {
  FetchMarkdownRepoBase markdownRepo;
  MarkdownBloc(
    this.markdownRepo,
  ) : super(const _Initial()) {
    on<MarkdownEvent>((event, emit) async {
      fetchData(String path) async {
        emit(const MarkdownState.loading());
        try {
          final result = await markdownRepo.getMarkDown(path: path);
          emit(
            MarkdownState.fetchSuccess(
              result,
            ),
          );
        } catch (e) {
          e.toString;
          emit(
            MarkdownState.fetchFailed(
              e.toString(),
            ),
          );
        }
      }

      await event.when(
        started: () {},
        fetch: (path) async {
          await fetchData(path);
        },
      );
    });
  }
}
