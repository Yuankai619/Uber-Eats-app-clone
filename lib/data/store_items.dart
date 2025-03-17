import '../models/store_item.dart';

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
