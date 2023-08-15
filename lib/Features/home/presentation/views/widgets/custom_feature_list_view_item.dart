import 'package:flutter/material.dart';

class CustomFeatureListViewItem extends StatelessWidget {
  const CustomFeatureListViewItem({Key? key, required this.image}) : super(key: key);
  final String  image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              image ,
            ),
          ),
        ),
      ),
    );
  }
}
