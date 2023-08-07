import 'package:bookly/Features/home/presentation/views/widgets/book_details_list_view_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_view_section.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomBookDetailsViewAppBar(),
                  BookDetailsViewSection(),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  BookDetailsListViewSection(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
