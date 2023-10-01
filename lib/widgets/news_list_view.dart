import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/article_modle.dart';
import 'news_tile.dart';

class NewsListCart extends StatelessWidget {
  final List<ArticleModel> articals;

  const NewsListCart({super.key, required this.articals});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: articals.length,
      itemBuilder: (contex, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: NewsCard(
            articleModel: articals[index],
          ),
        );
      },
    );
  }
}
