import 'package:flutter/material.dart';
import 'package:uber_eats_clone/widgets/store_item_widget.dart';

import '../models/store_item.dart';

class RecommendationSection extends StatelessWidget {
  final String title;
  final VoidCallback onArrowPressed;
  final List<StoreItem> items;

  const RecommendationSection({
    super.key,
    required this.title,
    required this.onArrowPressed,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. 最上層 Row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 左側文字
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 222, 222, 222),
                ),
              ),
              // 右側箭頭 IconButton
              Container(
                width: 40,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 41, 41, 41),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_forward, size: 18),
                  onPressed: onArrowPressed,
                  color: Color.fromARGB(255, 222, 222, 222),
                ),
              ),
            ],
          ),
        ),
        // 2. 中層：橫向 ListView
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return StoreItemWidget(item: items[index]);
            },
          ),
        ),
        // 3. 最下層：細分隔線
        Divider(
          thickness: 1,
          height: 1,
          color: Color.fromARGB(255, 41, 41, 41),
        ),
      ],
    );
  }
}
