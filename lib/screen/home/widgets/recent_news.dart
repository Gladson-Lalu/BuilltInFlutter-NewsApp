import 'package:flutter/material.dart';

import 'custom_tile.dart';

class RecentNews extends StatelessWidget {
  const RecentNews({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return CustomTile(screenWidth: screenWidth);
      },
    );
  }
}