import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<String> categoryList = ['All','Business','Entertainment','Health','Science','Sports','Technology'];
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categoryList.map((type) {return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(type,style: Theme.of(context).textTheme.headline6,),
          );}).toList()
      ),
    );
  }
}