import 'package:flutter/material.dart';
import 'package:uber_eats_clone/widgets/sliver_app_bar_delegate%20.dart';

import '../widgets/custom_search_bar.dart';
import '../widgets/delivery_widget.dart';
import 'home_body_content.dart';

class UberEatsHome extends StatelessWidget {
  const UberEatsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
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
              Center(child: SingleChildScrollView(child: HomeBodyContent())),
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
