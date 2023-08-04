import 'package:bookly/Features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 30),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.separated(
          itemCount: 20,
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomFeatureListViewItem(),
        ),
      ),
    );
  }
}
