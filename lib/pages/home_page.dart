import 'package:flutter/material.dart';
import 'package:new_app/pages/category_page.dart';
import '../widgets/categories_list_cart.dart';
import '../widgets/news_list_view.dart';
import '../widgets/news_list_view_bulder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
              ),
            ),
            NewsListBulder(q: 'bitcoin',),
          ],
        ),
      ),
    );
  }
}
