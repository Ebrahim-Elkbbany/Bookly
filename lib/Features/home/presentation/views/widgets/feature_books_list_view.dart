
import 'package:bookly/Features/home/presentation/views/widgets/custom_feature_list_view_item.dart';
import 'package:flutter/material.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.sizeOf(context).height*0.3,
      child: ListView.builder(
        padding: const EdgeInsetsDirectional.only(start: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder:(context, index) =>  const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomFeatureListViewItem(),
        ),
      ),
    );
  }
}
