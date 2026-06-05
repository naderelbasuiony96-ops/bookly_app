import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: bluidOutLinePutBorder(),
        focusedBorder: bluidOutLinePutBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Opacity(
            opacity: .8,
            child: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 22),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder bluidOutLinePutBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
