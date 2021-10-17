import 'package:flutter/material.dart';


class MainBar extends StatelessWidget {
  const MainBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.network(
            'https://images.unsplash.com/photo-1543699539-33a389c5dcfe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2070&q=80',
          ),
        ),
        SizedBox(height: 15),
        Container(
          width: screenWidth * 1,
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            'Over 10 crore Indians own cryptocurrency, highest in the world',
            style: Theme.of(context).primaryTextTheme.headline5,
          ),
        ),
      ],
    );
  }
}