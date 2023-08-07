import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const BookListViewItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 5,
    );
  }
}
