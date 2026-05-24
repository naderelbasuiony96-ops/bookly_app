import 'package:bookly_app/Features/home/presentation/views/widgets/app_bar_book_details.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [SafeArea(child: AppBarBookDetails())]),
    );
  }
}
