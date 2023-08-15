import 'package:bookly/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomFeatureListViewItem extends StatelessWidget {
  const CustomFeatureListViewItem({Key? key, required this.imageUrl, this.borderRadius =16})
      : super(key: key);
  final String imageUrl;
  final double borderRadius ;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
           errorWidget: (context, url, error) {
             return  const Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error),
                Text('ERROR',style: Styles.textStyle14),
              ],
             );
           },
          imageUrl: imageUrl,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
