import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tot_landing_page_widgets/data/repo/base/fetch_markdown.dart';
import 'package:tot_landing_page_widgets/data/repo/impl/fetch_markdown.dart';
import 'package:tot_landing_page_widgets/view/blocs/bloc/markdown_bloc.dart';


final GetIt sl = GetIt.instance;

SharedPreferences prefs = sl<SharedPreferences>();

Future<void> setUpDependencies() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  sl.registerSingleton<SharedPreferences>(sharedPreferences);
  // sl.registerSingleton<DioHelper>(DioHelper());

  sl.registerSingleton<FetchMarkdownRepoBase>(FetchMarkdownRepoImpl());

  sl.registerFactory<MarkdownBloc>(() => MarkdownBloc(sl()));
}
