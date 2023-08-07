import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view_item_rating_row.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_details_list_view.dart';
import 'package:bookly/Features/home/presentation/views/widgets/books_action_buttons.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_details_view_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const CustomBookDetailsViewAppBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                    child: const CustomFeatureListViewItem(),
                  ),
                  const SizedBox(
                    height: 43,
                  ),
                  Text(
                    'The Jungle Book',
                    style: Styles.textStyle30.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Rudyard Kipling',
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const RatingRow(mainAxisAlignment: MainAxisAlignment.center),
                  const SizedBox(
                    height: 37,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: BooksActionButtons(),
                  ),
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const BooksDetailsListView(),
                  const SizedBox(
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
