import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/newest_books_list_view_item_rating_row.dart';
import 'package:bookly/Features/home/presentation/views/widgets/book_action_buttons.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewSection extends StatelessWidget {
  const BookDetailsViewSection({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child:  CustomFeatureListViewItem(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ??'',
            ),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            bookModel.volumeInfo.title ??'',
            textAlign: TextAlign.center,
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
              bookModel.volumeInfo.authors?[0] ?? '',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
           RatingRow(
            mainAxisAlignment: MainAxisAlignment.center,
            pageCount: bookModel.volumeInfo.pageCount ?? 0,
          ),
          const SizedBox(
            height: 37,
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: BooksActionButtons(bookModel: bookModel),
          ),
        ],
      ),
    );
  }
}
