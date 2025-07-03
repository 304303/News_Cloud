import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          Container(
            height: 90,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: categoryModel.categoryColor,
              image: DecorationImage(
                image: AssetImage(categoryModel.image),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Center(
                child: Text(
                  categoryModel.categoryName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
