import 'package:flutter/material.dart';

class CustomFeatureListViewItem extends StatelessWidget {
  const CustomFeatureListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/test_image.png'),
            ),
          ),
        ),
      ),
    );
  }
}
