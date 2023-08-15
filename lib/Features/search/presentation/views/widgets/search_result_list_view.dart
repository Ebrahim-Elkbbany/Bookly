import 'package:bookly/Features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly/core/widgets/custom_circular_indicator.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) =>  CustomCircularIndicator(),
      // BookListViewItem(
      //   bookName: '',
      //   authorName: '',
      //   imageUrl: '',
      //
      // ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 5,
    );
  }
}
