import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_view_text_field.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        var cubit =BlocProvider.of<SearchCubit>(context);
        return  SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                SearchViewTextField(cubit: cubit),
                const SizedBox(height: 20,),
                const Text('Search Result', style: Styles.textStyle18),
                const SizedBox(height: 18,),
                SearchResultListView(cubit: cubit),
              ],
            ),
          ),
        );
      },
    );
  }
}



