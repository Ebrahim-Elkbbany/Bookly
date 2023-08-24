import 'package:bookly/Features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/core/widgets/custom_circular_indicator.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key, required this.cubit}) : super(key: key);
  final SearchCubit cubit;

  @override
  Widget build(BuildContext context) {
    if (cubit.state is SearchSuccess) {
      return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => BookListViewItem(
          bookModel: cubit.books[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemCount: cubit.books.length,
      );
    } else if (cubit.state is SearchFailure) {
      return const CustomErrorWidget(errorMessage: 'Not Available');
    } else if(cubit.state is SearchLoading){
      return const CustomCircularIndicator();
    }else{
      return const Center(
        child: Text('Search Of Book Name'),
      );
    }
  }
}
