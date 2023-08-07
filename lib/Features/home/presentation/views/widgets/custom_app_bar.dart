import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20, bottom: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/Logo.png', height: 22),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchViewBodyPath);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
