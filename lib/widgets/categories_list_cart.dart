import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'Category_Card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});

  final List<CategoryModel> card = [
    const CategoryModel(
      image: 'assets/images/space.jpeg',
      categoryName: 'space',
    ),
    const CategoryModel(
      image: 'assets/images/sport.webp',
      categoryName: 'sport',
    ),
    const CategoryModel(
      image: 'assets/images/buisness.jpeg',
      categoryName: 'business',
    ),
    const CategoryModel(
      image: 'assets/images/health.jpeg',
      categoryName: 'health',
    ),
    const CategoryModel(
      image: 'assets/images/science.jpg',
      categoryName: 'science',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: card.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: card[index],
          );
        },
      ),
    );
  }
}
