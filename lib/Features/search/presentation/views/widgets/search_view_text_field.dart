import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewTextField extends StatelessWidget {
  const SearchViewTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:Colors.white.withOpacity(0.5) ,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'search',
        suffixIconColor: Colors.white.withOpacity(0.5),
        suffixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 22,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}

