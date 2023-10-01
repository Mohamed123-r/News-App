import 'package:flutter/material.dart';

import '../widgets/news_list_view_bulder.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            NewsListBulder(
              q: category,
            ),
          ],
        ),
      ),
    );
  }
}
