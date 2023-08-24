import 'package:bookly/Features/home/presentation/manger/relevance_books_cubit/relevance_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:bookly/core/widgets/custom_circular_indicator.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RelevanceBooksListView extends StatelessWidget {
  const RelevanceBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelevanceBooksCubit, RelevanceBooksState>(
      builder: (context, state) {
        if(state is RelevanceBooksSuccess){
        return SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * .16,
          child: ListView.separated(
           physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            itemBuilder: (context, index) =>
             CustomFeatureListViewItem(
               borderRadius: 8,
              imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ??'',
            ),
          ),
        );
        }else if(state is RelevanceBooksFailure){
         return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
