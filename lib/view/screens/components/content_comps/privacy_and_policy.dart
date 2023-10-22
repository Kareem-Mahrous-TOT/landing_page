import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tot_landing_page_widgets/view/blocs/bloc/markdown_bloc.dart';

import '../markdown_molecule.dart';

class PrivacyAndPolicy extends StatefulWidget {
  const PrivacyAndPolicy({super.key});

  @override
  State<PrivacyAndPolicy> createState() => _PrivacyAndPolicyState();
}

class _PrivacyAndPolicyState extends State<PrivacyAndPolicy> {
  final ScrollController controller = ScrollController(initialScrollOffset: 0);
  @override
  void initState() {
    super.initState();
    context
        .read<MarkdownBloc>()
        .add(const MarkdownEvent.fetch("assets/markdown_test_page.md"));
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
        title: const Text("Privacy and Policy"),
      ),
      body: BlocBuilder<MarkdownBloc, MarkdownState>(
        builder: (context, state) => state.when(
          initial: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          fetchSuccess: (data) => MarkdownMolecule(
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
