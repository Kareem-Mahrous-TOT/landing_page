import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tot_landing_page_widgets/view/blocs/bloc/markdown_bloc.dart';

class TermsAndConditoins extends StatefulWidget {
  const TermsAndConditoins({super.key});

  @override
  State<TermsAndConditoins> createState() => _TermsAndConditoinsState();
}

class _TermsAndConditoinsState extends State<TermsAndConditoins> {
  final ScrollController controller = ScrollController(initialScrollOffset: 0);

  @override
  void initState() {
    super.initState();
    context.read<MarkdownBloc>().add(
          const MarkdownEvent.fetch(
            "assets/terms-of-service.md",
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_upward),
        onPressed: () => controller.animateTo(
          0,
          duration: const Duration(
            seconds: 1,
          ),
          curve: Curves.easeOut,
        ),
      ),
      appBar: AppBar(
        title: const Text("Terms & Conditions"),
        centerTitle: true,
      ),
      body: BlocBuilder<MarkdownBloc, MarkdownState>(
        builder: (context, state) => state.when(
          initial: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          fetchSuccess: (data) => Markdown(
            controller: controller,
            selectable: true,
            data: data,
          ),
          fetchFailed: (message) => Center(
            child: Text(
              message,
            ),
          ),
        ),
      ),
    );
  }
}
