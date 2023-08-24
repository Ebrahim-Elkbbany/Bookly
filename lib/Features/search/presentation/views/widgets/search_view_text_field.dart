import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewTextField extends StatefulWidget {
  const SearchViewTextField({
    Key? key,
    required this.cubit,
  }) : super(key: key);
  final SearchCubit cubit;

  @override
  State<SearchViewTextField> createState() => _SearchViewTextFieldState();
}

class _SearchViewTextFieldState extends State<SearchViewTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white.withOpacity(0.5),
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
      onSubmitted: (String searchText) {
        if (searchText != '') {
          widget.cubit.fetchBooksSearch(searchText);
        }
      },
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
