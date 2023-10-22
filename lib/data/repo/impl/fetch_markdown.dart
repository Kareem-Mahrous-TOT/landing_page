import 'package:flutter/services.dart';
import 'package:tot_landing_page_widgets/data/repo/base/fetch_markdown.dart';

class FetchMarkdownRepoImpl implements FetchMarkdownRepoBase {
  @override
  Future<String> getMarkDown({required String path}) async {
    try {
      String data = await rootBundle.loadString(path);
      return data;
    } catch (e) {
      return e.toString();
    }
  }
}
