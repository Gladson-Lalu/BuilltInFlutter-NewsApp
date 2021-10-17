import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: screenWidth,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.network(
                  'https://www.androidcentral.com/sites/androidcentral.com/files/styles/large/public/article_images/2021/10/hp-chromebook-x2-11-laptop-mode-twitter-green.jpg',
                  fit: BoxFit.cover,
                  width: screenWidth * .28,
                  height: screenWidth * .28,),
                
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ConstrainedBox(
                  constraints:
                      BoxConstraints(maxWidth: screenWidth * .6, maxHeight: screenWidth * .2),
                  child: Text(
                    "HP Chromebook X2 11 review: Plays hard, but can't work hard",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                const SizedBox(height: 18),
                Row(
                  children: [
                    Icon(
                      Icons.lock_clock,
                      size: 18,
                    ),
                    const SizedBox(width: 3),
                    Text('5 min Read',
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
