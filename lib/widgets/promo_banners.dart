import 'package:flutter/material.dart';
import 'package:uber_eats_clone/models/promo_item.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});
  final List<PromoItem> items = const [
    PromoItem(
      title: '大正紅茶拿鐵(M)',
      description: '濃郁紅茶搭配香醇奶香，風味絕佳',
      imageUrl: 'https://picsum.photos/200/300?random=6',
    ),
    PromoItem(
      title: '伯爵紅茶拿鐵(M)',
      description: '帶有淡淡柑橘香氣的伯爵茶與奶香結合',
      imageUrl: 'https://picsum.photos/200/300?random=4',
    ),
    PromoItem(
      title: '迷客夏新品',
      description: '新品上市，限時買一送一',
      imageUrl: 'https://picsum.photos/200/300?random=5',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Container(
            width: 360, // 單個卡片寬度
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.red, // 外層背景色
              borderRadius: BorderRadius.circular(20),
            ),
            // 用 ClipRRect 來裁切內部，使外層的圓角真正生效
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Row(
                children: [
                  // 左側：文字區 (2/3)
                  Expanded(
                    flex: 2,
                    child: Container(
                      // 如果你想讓外層紅色透出，將下方 color 移除或改為 transparent
                      color: const Color.fromARGB(255, 211, 239, 218),
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 標題與敘述
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                item.description,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                          // 按鈕
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(70, 28),
                              shadowColor: Colors.transparent,
                            ),
                            child: const SizedBox(
                              width: 70,
                              child: Center(
                                child: Text(
                                  '查看優惠',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 右側：圖片 (1/3)
                  Image.network(item.imageUrl, fit: BoxFit.cover),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
