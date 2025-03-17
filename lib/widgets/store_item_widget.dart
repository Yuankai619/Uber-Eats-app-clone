import 'package:flutter/material.dart';
import 'package:uber_eats_clone/models/store_item.dart';

class StoreItemWidget extends StatelessWidget {
  final StoreItem item;

  const StoreItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,

      margin: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // (1) 圖片 + 綠底標籤(使用 Stack 疊加)
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  item.imageUrl,
                  width: 260,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              if (item.label != null)
                Positioned(
                  top: 8,
                  left: 8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Container(
                      color: Color.fromARGB(255, 14, 131, 69),
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                      child: Text(
                        item.label!,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 8),
          // (2) 下方資訊：左側店家資料 + 右側愛心
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // 左側店家資訊
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.storeName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 222, 222, 222),
                        ),
                      ),
                      Text(
                        item.fee,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 222, 222, 222),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            item.rating,
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 222, 222, 222),
                            ),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Color.fromARGB(255, 222, 222, 222),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '・${item.time}',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // 右側愛心 Icon
              IconButton(
                padding: EdgeInsets.zero,
                alignment: Alignment.topCenter,
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
                color: Color.fromARGB(255, 72, 72, 72),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
