import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
     required this.tileName,required this.name,}
  );
  final String name;
  final String tileName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Text(
         tileName,
          style: Theme.of(context).textTheme.headline6
        ),
        Spacer(),
        Text(
          name,
          style: Theme.of(context).textTheme.headline6
        ),
      ],
    );
  }
}