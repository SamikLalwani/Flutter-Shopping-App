import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 2000,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
            categoryName: 'Sken Bages',
            categoryImage: 'assets/01.png',
            categoryColor: 0x1180ff80,
          ),

          CategoryCard(
            categoryName: 'Head Phone',
            categoryImage: 'assets/03.png',
            categoryColor: 0x11ff8080,
          ),

          CategoryCard(
            categoryName: 'WristWatch',
            categoryImage: 'assets/05.png',
            categoryColor: 0x118080ff,
          ),

          CategoryCard(
            categoryName: 'Sken choes',
            categoryImage: 'assets/06.png',
            categoryColor: 0x11808080,
          ),

          CategoryCard(
            categoryName: 'Jacket',
            categoryImage: 'assets/04.png',
            categoryColor: 0x1180ff80,
          ),

          CategoryCard(
            categoryName: 'Silver Ring',
            categoryImage: 'assets/02.png',
            categoryColor: 0x11ff8080,
          ),
          CategoryCard(
            categoryName: 'Mobile Cover',
            categoryImage: 'assets/07.png',
            categoryColor: 0x118080ff,
          ),

          CategoryCard(
            categoryName: 'Makeup kit',
            categoryImage: 'assets/08.png',
            categoryColor: 0x11808080,
          ),
        ],
      ),
    );
  }
}





class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {required this.categoryImage,
        required this.categoryName,
        required this.categoryColor});

  final String categoryImage;
  final String categoryName;
  final int categoryColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        width: 120,
        color: Color(categoryColor),
        child: Column(
          children: <Widget>[
             Padding(
               padding: const EdgeInsets.only(left: 8, right: 8,top: 6,bottom: 6),
               child: Text(
                  categoryName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
             ),
            Padding(
              padding: EdgeInsets.all(1),
              child: Image(
                height: 70,
                width: 70,
                image: ExactAssetImage(categoryImage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

