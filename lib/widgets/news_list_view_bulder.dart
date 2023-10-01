import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/services/news-services.dart';

import '../models/article_modle.dart';
import 'news_list_view.dart';

class NewsListBulder extends StatefulWidget {
  const NewsListBulder({super.key, required this.q});

  final String q;

  @override
  State<NewsListBulder> createState() => _NewsListBulderState();
}

class _NewsListBulderState extends State<NewsListBulder> {
  // ignore: prefer_typing_uninitialized_variables
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getNews(q: widget.q);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListCart(
            articals: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                'oops there was an error , please try later',
              ),
            ),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
