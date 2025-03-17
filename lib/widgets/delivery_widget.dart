import 'package:flutter/material.dart';

class DeliveryWidget extends StatelessWidget {
  const DeliveryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      color: Colors.transparent, // 背景顏色
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 左側 Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('立即外送', style: TextStyle(color: Colors.white, fontSize: 12)),

              SizedBox(
                height: 24,
                width: 120,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(0),
                    textStyle: TextStyle(fontSize: 12),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '祥豐街339號',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // 右側 Row
          Row(
            children: [
              SizedBox(
                width: 86,
                height: 36,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 41, 41, 41), // 深色背景
                    foregroundColor: Colors.white, // 文字顏色
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('外送', style: TextStyle(fontSize: 14)),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
