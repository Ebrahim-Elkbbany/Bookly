
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActionButtons extends StatelessWidget {
  const BooksActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
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
            fontSize: 16,
            buttonName: 'Free Preview',
            textColor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
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
}