import 'package:flutter/material.dart';
import 'package:news/screen/home/widgets/category_list.dart';
import 'package:news/screen/home/widgets/custom_app_bar.dart';
import 'package:news/screen/home/widgets/recent_news.dart';
import 'package:news/screen/home/widgets/title_bar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                TitleBar(),
                CategoryList(),
                RecentNews(screenWidth: screenWidth)              ],
            ),
          ),
        ),
      ),
    );
  }
}