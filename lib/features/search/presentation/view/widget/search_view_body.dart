import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/search/presentation/view/widget/search_result_list.dart';
import 'package:bookly_app/features/search/presentation/view/widget/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          const SizedBox(height: 16),
          Text('Search Result', style: Styles.textStyle18),
          const SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
