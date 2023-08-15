
import 'package:bookly/Features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsListView extends StatelessWidget {
  const BooksDetailsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.separated(
        itemCount: 20,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        itemBuilder: (context, index) => const CustomFeatureListViewItem(
          image: 'https://img.freepik.com/free-psd/investigation-flyer-template-theme_23-2148628043.jpg?w=740&t=st=1692119741~exp=1692120341~hmac=e20e393b1fd2742afbd2ae5d5e0a0974508904388fcb8403cf781cd4892cd397',
        ),
      ),
    );
  }
}
