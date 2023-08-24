
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/utils/functions/custom_lunch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActionButtons extends StatelessWidget {
  const BooksActionButtons({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(
          child: CustomButton(
            buttonName: '19.99€',
            textColor: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                16,
              ),
              bottomLeft: Radius.circular(
                16,
              ),
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: (){
              customLunchUrl(context, bookModel.volumeInfo.previewLink);
            },
            fontSize: 16,
            buttonName: getText(bookModel),
            textColor: Colors.white,
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(
                16,
              ),
              bottomRight: Radius.circular(
                16,
              ),
            ),
          ),
        ),
      ],
    );
  }
  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}