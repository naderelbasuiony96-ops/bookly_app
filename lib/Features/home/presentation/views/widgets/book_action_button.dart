import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            title: '19.99€',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            title: 'Free Preview',
            backgroundColor: Colors.redAccent,
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
