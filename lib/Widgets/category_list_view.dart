
import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(
        image: 'assets/images/Sports.png',
        categoryName: 'Sports',
        categoryColor: Color.fromRGBO(217, 224, 164, 55),
    ),

    CategoryModel(
      image: 'assets/images/Tech.png',
      categoryName: 'Tech',
      categoryColor: Color.fromRGBO(112, 99, 235, 0.82),
    ),

    CategoryModel(
      image: 'assets/images/Business.png',
      categoryName: 'Business',
      categoryColor: Color.fromRGBO(217, 224, 164, 55),
    ),

    CategoryModel(
      image: 'assets/images/Health.png',
      categoryName: 'Health',
      categoryColor: Color.fromRGBO(112, 99, 235, 0.82),

    ),

    CategoryModel(
      image: 'assets/images/Science.png',
      categoryName: 'Science',
      categoryColor: Color.fromRGBO(217, 224, 164, 55),
    ),

    CategoryModel(
      image: 'assets/images/Entertainment.png',
      categoryName: 'ُEntertain',
      categoryColor: Color.fromRGBO(112, 99, 235, 0.82),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index){
            return CategoryCard(
              categoryModel: categories[index],
            );
          }
      ),
    );
  }
}