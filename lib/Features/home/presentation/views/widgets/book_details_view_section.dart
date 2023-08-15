import 'package:bookly/Features/home/presentation/views/widgets/nesest_books_list_view_item_rating_row.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_action_buttons.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewSection extends StatelessWidget {
  const BookDetailsViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: const CustomFeatureListViewItem(
            imageUrl: 'https://img.freepik.com/free-psd/investigation-flyer-template-theme_23-2148628043.jpg?w=740&t=st=1692119741~exp=1692120341~hmac=e20e393b1fd2742afbd2ae5d5e0a0974508904388fcb8403cf781cd4892cd397',
          ),
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
        const RatingRow(
          mainAxisAlignment: MainAxisAlignment.center,
          pageCount: 0,
        ),
        const SizedBox(
          height: 37,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: BooksActionButtons(),
        ),
      ],
    );
  }
}
