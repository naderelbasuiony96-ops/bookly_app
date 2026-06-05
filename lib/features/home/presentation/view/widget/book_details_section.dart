import 'package:bookly_app/core/Utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_action_boutton.dart';
import 'package:bookly_app/features/home/presentation/view/widget/book_rating.dart';
import 'package:bookly_app/features/home/presentation/view/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(),
        ),
        Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(height: 6),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BookActionButton(),
      ],
    );
  }
}
