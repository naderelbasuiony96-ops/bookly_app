import 'package:bookly_app/Features/home/presentation/views/widgets/app_bar_book_details.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/book_details_%20section.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(height: 20),
                AppBarBookDetails(),
                const BookDetailsSection(),
                const Expanded(child: SizedBox(height: 45)),
                SimilarBookSection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
