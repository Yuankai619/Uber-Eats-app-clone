import 'package:flutter/material.dart';
import 'package:uber_eats_clone/models/store_item.dart';
import 'package:uber_eats_clone/widgets/promo_banners.dart';
import 'package:uber_eats_clone/widgets/recommendation_section.dart';
import 'package:uber_eats_clone/widgets/sliver_app_bar_delegate%20.dart';

import '../widgets/categories.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/delivery_widget.dart';
import '../widgets/filter_row.dart';

class UberEatsHome extends StatelessWidget {
  const UberEatsHome({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'name': '生鮮雜貨', 'icon': 'assets/images/Grocery_v2.png'},
      {'name': '早餐', 'icon': 'assets/images/Breakfast.png'},
      {'name': '咖啡', 'icon': 'assets/images/Coffee.png'},
      {'name': '珍珠奶茶', 'icon': 'assets/images/BubbleTea.png'},
      {'name': '台灣美食', 'icon': 'assets/images/Taiwanese.png'},
      {'name': '便利食品', 'icon': 'assets/images/Convenience@3x.png'},
      {'name': '中式美食', 'icon': 'assets/images/Chinese.png'},
      {'name': '速食', 'icon': 'assets/images/FastFood.png'},
      {'name': '甜點', 'icon': 'assets/images/Dessert.png'},
      {'name': '披薩', 'icon': 'assets/images/Pizza.png'},
      {'name': '烘焙食品', 'icon': 'assets/images/Bakery.png'},
    ];
    final List<StoreItem> storeItems = [
      StoreItem(
        imageUrl: 'https://picsum.photos/200/300?random=1', // 範例圖片連結
        label: '買一送一',
        storeName: '好運日式炸物鋪',
        fee: '20 TWD 費用',
        rating: '4.8',
        time: '25分鐘',
      ),
      StoreItem(
        imageUrl: 'https://picsum.photos/200/300?random=2',
        label: '免運費',
        storeName: '全聯福利中心',
        fee: '40 TWD 費用',
        rating: '4.9',
        time: '25分鐘',
      ),
      StoreItem(
        imageUrl: 'https://picsum.photos/200/300?random=3',
        label: '春天兩百',
        storeName: '美味炸雞店',
        fee: '30 TWD 費用',
        rating: '4.6',
        time: '30分鐘',
      ),
    ];
    final restaurants = [
      {
        'name': '全聯福利中心 基隆中正',
        'imageUrl': 'https://picsum.photos/200/300?random=1',
        'rating': 4.9,
        'reviews': '1,000+',
        'deliveryTime': '25 分鐘',
        'fee': '40TWD 費用',
      },
      {
        'name': '好運殿 日式炸物專賣',
        'imageUrl': 'https://picsum.photos/200/300?random=2',
        'rating': 4.8,
        'reviews': '2,000+',
        'deliveryTime': '20 分鐘',
        'fee': '20TWD 費用',
      },
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 22, 22, 22),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverAppBarDelegate(
                  minHeight: 100, // 可根據需求調整高度
                  maxHeight: 100,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    color: Color.fromARGB(255, 22, 22, 22),
                    child: TabBar(
                      padding: EdgeInsets.zero,
                      indicatorColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      dividerColor: Colors.white10,
                      dividerHeight: 3,
                      indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(width: 3.0, color: Colors.white),
                      ),
                      tabs: [
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/UberLogo.png",
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(width: 14),
                              Text('搭乘'),
                            ],
                          ),
                        ),
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/UberEatsLogo.png",
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(width: 14),
                              Text('Uber Eats'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: false,
                floating: true,
                delegate: SliverAppBarDelegate(
                  minHeight: 60,
                  maxHeight: 60, // 這裡請依你的 DeliveryWidget 高度設定
                  child: DeliveryWidget(),
                ),
              ),
              // 固定在 TabBar 下方的 CustomSearchBar
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverAppBarDelegate(
                  minHeight: 70, // 這裡請依你的 SearchBar 高度設定
                  maxHeight: 70,
                  child: CustomSearchBar(),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              // 對應「搭乘」Tab 的內容
              Center(child: Text('搭乘內容', style: TextStyle(fontSize: 24))),
              // 對應「Uber Eats」Tab 的內容
              Center(
                child: SingleChildScrollView(
                  child: Padding(
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
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            splashFactory: NoSplash.splashFactory, // 移除點擊水波紋
            highlightColor: Colors.transparent, // 移除高亮效果
          ),
          child: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 22, 22, 22),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: '首頁'),
              BottomNavigationBarItem(icon: Icon(Icons.apps), label: '服務'),
              BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: '活動'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: '帳戶'),
            ],
          ),
        ),
      ),
    );
  }
}
