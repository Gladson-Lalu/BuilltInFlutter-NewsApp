import 'package:flutter/material.dart';
import '../../../config/var/var.dart' as configVar;

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Breaking News', style: Theme.of(context).textTheme.headline4),
          const SizedBox(height: 10),
          MainBar()],
      ),
    );
  }
}

class MainBar extends StatelessWidget {
  const MainBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius:0.3,spreadRadius: 0,)]
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.network(
              configVar.breakingNews,
              fit: BoxFit.cover
            ),
          ),
          Container(
            margin: EdgeInsets.all(9),
            child: Text(
              configVar.breakingNewsContent,
              style: Theme.of(context).primaryTextTheme.subtitle1
            ),
          ),
        ],
      ),
    );
  }
}
