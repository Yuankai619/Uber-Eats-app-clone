import 'package:flutter/material.dart';

import '../data/categories.dart';
import '../data/store_items.dart';
import '../widgets/categories.dart';
import '../widgets/filter_row.dart';
import '../widgets/promo_banners.dart';
import '../widgets/recommendation_section.dart';

class HomeBodyContent extends StatelessWidget {
  const HomeBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Categories(categories: categories),
          FilterRow(),
          RecommendationSection(
            title: 'Uber Eats 精選推薦',
            onArrowPressed: () {},
            items: storeItems,
          ),
          RecommendationSection(
            title: 'Uber Eats 精選推薦',
            onArrowPressed: () {},
            items: storeItems,
          ),
          RecommendationSection(
            title: 'Uber Eats 精選推薦',
            onArrowPressed: () {},
            items: storeItems,
          ),
          RecommendationSection(
            title: 'Uber Eats 精選推薦',
            onArrowPressed: () {},
            items: storeItems,
          ),
          RecommendationSection(
            title: 'Uber Eats 精選推薦',
            onArrowPressed: () {},
            items: storeItems,
          ),
          RecommendationSection(
            title: 'Uber Eats 精選推薦',
            onArrowPressed: () {},
            items: storeItems,
          ),
          PromoBanner(),
          RecommendationSection(
            title: 'Uber Eats 精選推薦',
            onArrowPressed: () {},
            items: storeItems,
          ),
        ],
      ),
    );
  }
}
