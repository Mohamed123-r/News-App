import 'package:flutter/material.dart';
import 'package:new_app/models/category_model.dart';

import '../pages/category_page.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return CategoryPage(category: category.categoryName,);
            }));
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              category.image,
            ),
          ),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
