import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Widgets/news_card.dart';


// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
  NewsListView({super.key ,required this.articles});
  List<ArticleModel> articles = [];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length, // Replace with your actual data count
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: NewsCard(articleModel: articles[index]),
          );
        },
      ),
    );
  }
}
