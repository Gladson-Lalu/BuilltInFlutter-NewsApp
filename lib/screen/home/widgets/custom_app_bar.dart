import 'package:flutter/material.dart';
import '../../../config/var/var.dart' as configvar;

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(configvar.profile),
            ),
            const SizedBox(width: 15),
            Text('12 Sept, 2021', style: Theme.of(context).textTheme.bodyText1),
          ],
        ),
        Icon(Icons.search, size: 28)
      ],
    );
  }
}