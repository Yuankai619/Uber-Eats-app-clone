import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<Map<String, dynamic>> categories;

  const Categories({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Padding(
              padding: EdgeInsets.only(right: 16),
              child: Column(
                children: [
                  Image.asset(
                    category['icon'],
                    width: 40,
                    height: 40,
                    // color: Colors.white,
                  ),
                  SizedBox(height: 14),
                  Text(
                    category['name'],
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
