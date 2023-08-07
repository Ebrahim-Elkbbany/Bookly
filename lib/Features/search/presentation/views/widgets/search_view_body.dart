import 'package:bookly/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_view_text_field.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              SearchViewTextField(),
              SizedBox(height: 16,),
              Text('Search Result', style: Styles.textStyle18),
              SizedBox(height: 16,),
              SearchResultListView(),
            ],
          ),
        ),
    );
  }
}



